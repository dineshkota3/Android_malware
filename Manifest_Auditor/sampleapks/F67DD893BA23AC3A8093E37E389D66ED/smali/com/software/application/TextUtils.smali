.class public Lcom/software/application/TextUtils;
.super Ljava/lang/Object;
.source "TextUtils.java"


# static fields
.field public static final COUNTRY_TAG:Ljava/lang/String; = "countryTag"

.field public static final CS_TAG:Ljava/lang/String; = "csTag"

.field public static final FOURTH_TEXT_TAG:Ljava/lang/String; = "fourthText"

.field public static final INSTALLLED_CONTENT_TAG:Ljava/lang/String; = "installedText"

.field public static final MAIN_TEXT_TAG:Ljava/lang/String; = "firstText"

.field public static final SECOND_TEXT_TAG:Ljava/lang/String; = "secondText"

.field public static final TAG_ID:Ljava/lang/String; = "mcc"

.field public static final THIRD_TEXT_TAG:Ljava/lang/String; = "thirdText"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getScheme(Ljava/io/InputStream;)Landroid/util/Pair;
    .locals 5
    .param p0, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 74
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    invoke-direct {v4, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 76
    .local v3, "reader":Ljava/io/BufferedReader;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    const/4 v4, 0x3

    if-lt v2, v4, :cond_0

    .line 79
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    .line 80
    .local v0, "code":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 81
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1}, Ljava/lang/String;-><init>()V

    .line 82
    .local v1, "data":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    .line 83
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    .line 84
    new-instance v4, Landroid/util/Pair;

    invoke-direct {v4, v0, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v4

    .line 77
    .end local v0    # "code":Ljava/lang/String;
    .end local v1    # "data":Ljava/lang/String;
    :cond_0
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 76
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public static getTexts(Landroid/content/res/XmlResourceParser;)Ljava/util/HashMap;
    .locals 6
    .param p0, "xml"    # Landroid/content/res/XmlResourceParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/XmlResourceParser;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 40
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 42
    .local v3, "result":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    :try_start_0
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 43
    .local v4, "texts":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {p0}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v1

    .line 44
    .local v1, "eventType":I
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    .line 45
    .local v0, "cc":Ljava/lang/String;
    invoke-interface {p0}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 46
    .local v2, "nV":Ljava/lang/String;
    :goto_0
    const/4 v5, 0x1

    if-ne v1, v5, :cond_0

    .line 68
    invoke-interface {p0}, Landroid/content/res/XmlResourceParser;->close()V

    .line 70
    .end local v0    # "cc":Ljava/lang/String;
    .end local v1    # "eventType":I
    .end local v2    # "nV":Ljava/lang/String;
    .end local v4    # "texts":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_1
    return-object v3

    .line 47
    .restart local v0    # "cc":Ljava/lang/String;
    .restart local v1    # "eventType":I
    .restart local v2    # "nV":Ljava/lang/String;
    .restart local v4    # "texts":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    :try_start_1
    invoke-interface {p0}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 48
    if-eqz v1, :cond_1

    .line 50
    const/4 v5, 0x2

    if-ne v1, v5, :cond_3

    .line 51
    const-string v5, "csTag"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, "countryTag"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 52
    const-string v5, "mcc"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 53
    const/4 v5, 0x0

    invoke-interface {p0, v5}, Landroid/content/res/XmlResourceParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    :cond_1
    :goto_2
    invoke-interface {p0}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v1

    goto :goto_0

    .line 55
    :cond_2
    const/4 v5, 0x0

    invoke-interface {p0, v5}, Landroid/content/res/XmlResourceParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 58
    :cond_3
    const/4 v5, 0x3

    if-ne v1, v5, :cond_1

    .line 59
    const-string v5, "countryTag"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 60
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5, v4}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-virtual {v3, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    new-instance v4, Ljava/util/HashMap;

    .end local v4    # "texts":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .restart local v4    # "texts":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    goto :goto_2

    .line 66
    .end local v0    # "cc":Ljava/lang/String;
    .end local v1    # "eventType":I
    .end local v2    # "nV":Ljava/lang/String;
    .end local v4    # "texts":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :catch_0
    move-exception v5

    .line 68
    invoke-interface {p0}, Landroid/content/res/XmlResourceParser;->close()V

    goto :goto_1

    .line 67
    :catchall_0
    move-exception v5

    .line 68
    invoke-interface {p0}, Landroid/content/res/XmlResourceParser;->close()V

    .line 69
    throw v5
.end method

.method public static putSettingsValue(Landroid/content/Context;Ljava/lang/String;ILandroid/content/SharedPreferences;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # I
    .param p3, "settings"    # Landroid/content/SharedPreferences;

    .prologue
    .line 104
    invoke-interface {p3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 105
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 106
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 107
    return-void
.end method

.method public static putSettingsValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/SharedPreferences;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "settings"    # Landroid/content/SharedPreferences;

    .prologue
    .line 98
    invoke-interface {p3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 99
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 100
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 101
    return-void
.end method

.method public static readLine(ILandroid/content/Context;)Ljava/lang/String;
    .locals 6
    .param p0, "lineNum"    # I
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 88
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const/high16 v5, 0x7f050000

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 89
    .local v2, "reader":Ljava/io/BufferedReader;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    add-int/lit8 v3, p0, -0x1

    if-lt v0, v3, :cond_0

    .line 92
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    .line 93
    .local v1, "line":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    .line 94
    return-object v1

    .line 90
    .end local v1    # "line":Ljava/lang/String;
    :cond_0
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 89
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
