.class public Lcom/madhouse/android/ads/Resource_zh_CN;
.super Ljava/util/ListResourceBundle;


# instance fields
.field private _:[[Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 6

    const/4 v3, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    invoke-direct {p0}, Ljava/util/ListResourceBundle;-><init>()V

    const/4 v0, 0x4

    new-array v0, v0, [[Ljava/lang/Object;

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v4}, LI/I;->I(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    const-string v2, "\u5173\u95ed"

    aput-object v2, v1, v4

    aput-object v1, v0, v5

    new-array v1, v3, [Ljava/lang/Object;

    const/4 v2, 0x7

    invoke-static {v2}, LI/I;->I(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    const-string v2, "\u524d\u4e00\u9875"

    aput-object v2, v1, v4

    aput-object v1, v0, v4

    new-array v1, v3, [Ljava/lang/Object;

    const/16 v2, 0x10

    invoke-static {v2}, LI/I;->I(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    const-string v2, "\u540e\u4e00\u9875"

    aput-object v2, v1, v4

    aput-object v1, v0, v3

    const/4 v1, 0x3

    new-array v2, v3, [Ljava/lang/Object;

    const/16 v3, 0x15

    invoke-static {v3}, LI/I;->I(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    const-string v3, "\u5237\u65b0"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/madhouse/android/ads/Resource_zh_CN;->_:[[Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method protected final getContents()[[Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/madhouse/android/ads/Resource_zh_CN;->_:[[Ljava/lang/Object;

    return-object v0
.end method
