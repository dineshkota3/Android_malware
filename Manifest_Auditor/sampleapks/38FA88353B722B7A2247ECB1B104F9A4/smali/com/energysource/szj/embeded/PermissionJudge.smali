.class public Lcom/energysource/szj/embeded/PermissionJudge;
.super Ljava/lang/Object;
.source "PermissionJudge.java"


# static fields
.field public static final ACCESS_NETWORK_STATE:I = 0x1

.field public static final ACCESS_WIFI_STATE:I = 0x2

.field public static final CHANGE_WIFI_STATE:I = 0x4

.field public static final INTERNET:I = 0x3

.field public static final READ_PHONE_STATE:I = 0x0

.field private static final TAG:Ljava/lang/String; = "==PermissionJudge=="

.field static final adHandler:Landroid/os/Handler;

.field private static cxt:Landroid/content/Context;

.field private static permisArray:Landroid/util/SparseArray;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v3, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 28
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/energysource/szj/embeded/PermissionJudge;->permisArray:Landroid/util/SparseArray;

    .line 31
    const/4 v0, 0x0

    sput-object v0, Lcom/energysource/szj/embeded/PermissionJudge;->cxt:Landroid/content/Context;

    .line 48
    sget-object v0, Lcom/energysource/szj/embeded/PermissionJudge;->permisArray:Landroid/util/SparseArray;

    new-array v1, v3, [Ljava/lang/String;

    const-string v2, "android.permission.READ_PHONE_STATE"

    aput-object v2, v1, v4

    const-string v2, "\u83b7\u53d6\u624b\u673a\u8bbe\u5907\u4fe1\u606f\uff0c\u7528\u6765\u6807\u8bc6\u552f\u4e00\u7528\u6237"

    aput-object v2, v1, v5

    invoke-virtual {v0, v4, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 50
    sget-object v0, Lcom/energysource/szj/embeded/PermissionJudge;->permisArray:Landroid/util/SparseArray;

    new-array v1, v3, [Ljava/lang/String;

    const-string v2, "android.permission.ACCESS_NETWORK_STATE"

    aput-object v2, v1, v4

    const-string v2, "\u83b7\u53d6\u7f51\u7edc\u72b6\u6001"

    aput-object v2, v1, v5

    invoke-virtual {v0, v5, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 52
    sget-object v0, Lcom/energysource/szj/embeded/PermissionJudge;->permisArray:Landroid/util/SparseArray;

    new-array v1, v3, [Ljava/lang/String;

    const-string v2, "android.permission.ACCESS_WIFI_STATE"

    aput-object v2, v1, v4

    const-string v2, "\u83b7\u53d6WIFI\u72b6\u6001"

    aput-object v2, v1, v5

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 55
    sget-object v0, Lcom/energysource/szj/embeded/PermissionJudge;->permisArray:Landroid/util/SparseArray;

    const/4 v1, 0x3

    new-array v2, v3, [Ljava/lang/String;

    const-string v3, "android.permission.INTERNET"

    aput-object v3, v2, v4

    const-string v3, "\u4e0a\u7f51\u83b7\u53d6\u5e7f\u544a"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 63
    new-instance v0, Lcom/energysource/szj/embeded/PermissionJudge$2;

    invoke-direct {v0}, Lcom/energysource/szj/embeded/PermissionJudge$2;-><init>()V

    sput-object v0, Lcom/energysource/szj/embeded/PermissionJudge;->adHandler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Landroid/content/Context;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lcom/energysource/szj/embeded/PermissionJudge;->cxt:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Landroid/content/Context;)V
    .locals 0
    .param p0, "x0"    # Landroid/content/Context;

    .prologue
    .line 18
    invoke-static {p0}, Lcom/energysource/szj/embeded/PermissionJudge;->checkPermission(Landroid/content/Context;)V

    return-void
.end method

.method private static checkPermission(Landroid/content/Context;)V
    .locals 9
    .param p0, "cxt"    # Landroid/content/Context;

    .prologue
    const/4 v8, 0x0

    .line 79
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 80
    .local v1, "echo":Ljava/lang/StringBuffer;
    const/4 v3, 0x1

    .line 82
    .local v3, "isexit":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    sget-object v5, Lcom/energysource/szj/embeded/PermissionJudge;->permisArray:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-ge v2, v5, :cond_2

    .line 83
    sget-object v5, Lcom/energysource/szj/embeded/PermissionJudge;->permisArray:Landroid/util/SparseArray;

    invoke-virtual {v5, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    move-object v0, v5

    check-cast v0, [Ljava/lang/String;

    move-object v4, v0

    .line 85
    .local v4, "perStr":[Ljava/lang/String;
    const/4 v5, 0x0

    :try_start_0
    aget-object v5, v4, v5

    invoke-virtual {p0, v5}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_1

    .line 87
    const-string v5, "==PermissionJudge=="

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\u6ca1\u6709\u914d\u7f6e\u4ee5\u4e0b\u6743\u9650,\u5e94\u7528\u5c06\u5173\u95ed:["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v7, 0x1

    aget-object v7, v4, v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v7, 0x0

    aget-object v7, v4, v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/energysource/szj/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x1

    aget-object v6, v4, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x0

    aget-object v6, v4, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",\n\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 93
    if-eqz v3, :cond_0

    .line 94
    const/4 v3, 0x0

    .line 82
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 99
    :cond_1
    const-string v5, "==PermissionJudge=="

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "=\u53ef\u4ee5\u6b63\u5e38\u8bbf\u95ee==:["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v7, 0x1

    aget-object v7, v4, v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v7, 0x0

    aget-object v7, v4, v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/energysource/szj/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 102
    :catch_0
    move-exception v5

    goto :goto_1

    .line 108
    .end local v4    # "perStr":[Ljava/lang/String;
    :cond_2
    if-eqz v3, :cond_3

    .line 132
    :goto_2
    return-void

    .line 120
    :cond_3
    new-instance v5, Landroid/app/AlertDialog$Builder;

    invoke-direct {v5, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v6, "\u6ca1\u6709\u914d\u7f6e\u4ee5\u4e0b\u6743\u9650,\u5e94\u7528\u5c06\u5173\u95ed"

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const-string v6, "\u786e\u8ba4"

    new-instance v7, Lcom/energysource/szj/embeded/PermissionJudge$3;

    invoke-direct {v7}, Lcom/energysource/szj/embeded/PermissionJudge$3;-><init>()V

    invoke-virtual {v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_2
.end method


# virtual methods
.method public openSwitchFlag()V
    .locals 2

    .prologue
    .line 38
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/energysource/szj/embeded/PermissionJudge$1;

    invoke-direct {v1, p0}, Lcom/energysource/szj/embeded/PermissionJudge$1;-><init>(Lcom/energysource/szj/embeded/PermissionJudge;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 44
    return-void
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 74
    sput-object p1, Lcom/energysource/szj/embeded/PermissionJudge;->cxt:Landroid/content/Context;

    .line 76
    return-void
.end method
