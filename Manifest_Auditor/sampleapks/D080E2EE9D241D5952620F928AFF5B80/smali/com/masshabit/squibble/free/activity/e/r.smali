.class public final Lcom/masshabit/squibble/free/activity/e/r;
.super Ljava/lang/Object;


# static fields
.field private static a:Ljavax/xml/parsers/DocumentBuilderFactory;

.field private static b:Ljavax/xml/parsers/DocumentBuilder;

.field private static c:Lorg/w3c/dom/Document;

.field private static d:Lorg/w3c/dom/Element;

.field private static e:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v0

    sput-object v0, Lcom/masshabit/squibble/free/activity/e/r;->a:Ljavax/xml/parsers/DocumentBuilderFactory;

    sput-object v1, Lcom/masshabit/squibble/free/activity/e/r;->b:Ljavax/xml/parsers/DocumentBuilder;

    sput-object v1, Lcom/masshabit/squibble/free/activity/e/r;->c:Lorg/w3c/dom/Document;

    sput-object v1, Lcom/masshabit/squibble/free/activity/e/r;->d:Lorg/w3c/dom/Element;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/masshabit/squibble/free/activity/e/r;->e:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/io/InputStream;)Ljava/util/HashMap;
    .locals 5

    sget-object v0, Lcom/masshabit/squibble/free/activity/e/r;->e:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    sget-object v0, Lcom/masshabit/squibble/free/activity/e/r;->a:Ljavax/xml/parsers/DocumentBuilderFactory;

    invoke-virtual {v0}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0

    sput-object v0, Lcom/masshabit/squibble/free/activity/e/r;->b:Ljavax/xml/parsers/DocumentBuilder;

    invoke-virtual {v0, p0}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v0

    sput-object v0, Lcom/masshabit/squibble/free/activity/e/r;->c:Lorg/w3c/dom/Document;

    invoke-interface {v0}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v0

    sput-object v0, Lcom/masshabit/squibble/free/activity/e/r;->d:Lorg/w3c/dom/Element;

    const-string v1, "Action"

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v1

    if-lez v1, :cond_2

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_2

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    const-string v1, ""

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v2

    move-object v4, v2

    move-object v2, v1

    move-object v1, v4

    :goto_1
    if-eqz v1, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v1

    goto :goto_1

    :cond_0
    sget-object v1, Lcom/masshabit/squibble/free/activity/e/r;->e:Ljava/util/HashMap;

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v0

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/masshabit/squibble/free/activity/e/r;->e:Ljava/util/HashMap;

    return-object v0
.end method
