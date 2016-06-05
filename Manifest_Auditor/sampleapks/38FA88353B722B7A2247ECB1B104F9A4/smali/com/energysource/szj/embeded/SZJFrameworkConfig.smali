.class public Lcom/energysource/szj/embeded/SZJFrameworkConfig;
.super Ljava/lang/Object;
.source "SZJFrameworkConfig.java"


# static fields
.field public static final ACTIVITY:Ljava/lang/String; = "activity"

.field public static final APPSEC:Ljava/lang/String; = "appsec"

.field public static BAKJARPATH:Ljava/lang/String; = null

.field public static final BOOTABLEMAPKEY:Ljava/lang/String; = "bootablemodule"

.field public static final BOOTABLEMODULE:Ljava/lang/String; = "bootableModule"

.field public static final CONFIGJARNAME:Ljava/lang/String; = "moduleconfig"

.field public static final CONTEXT:Ljava/lang/String; = "context"

.field public static final DEBUGFLAG:Ljava/lang/String; = "debugFlag"

.field public static final DEBUGLISTENER:Ljava/lang/String; = "debugListener"

.field public static JARPATH:Ljava/lang/String; = null

.field public static JAVAPATH:Ljava/lang/String; = null

.field public static final MODULEXMLNAME:Ljava/lang/String; = "module.xml"

.field public static final POSTFIX:Ljava/lang/String; = ".jar"

.field public static final PROJECTTYPE:Ljava/lang/String; = "projecttype"

.field public static final PROJECTTYPE_EMBEDED:I = 0x2

.field public static final PROJECTTYPE_SERVICE:I = 0x1

.field public static final WATCHERTYPE:Ljava/lang/String; = "watchertype"

.field public static final WIFIMANAGER:Ljava/lang/String; = "wifiManager"

.field public static final XMLNAME:Ljava/lang/String; = "bootablemodule.xml"

.field public static final ZIPTEMPPATH:Ljava/lang/String; = "/data/data/com.energysource.szjframework.android/tempZip/"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 7
    const-string v0, "data/data/com.energysource.szjframework.android/loadjar/"

    sput-object v0, Lcom/energysource/szj/embeded/SZJFrameworkConfig;->JARPATH:Ljava/lang/String;

    .line 16
    const-string v0, "/data/data/com.energysource.szjframework.android/bakjar/"

    sput-object v0, Lcom/energysource/szj/embeded/SZJFrameworkConfig;->BAKJARPATH:Ljava/lang/String;

    .line 22
    const-string v0, "data/data/com.energysource.szjframework.android/"

    sput-object v0, Lcom/energysource/szj/embeded/SZJFrameworkConfig;->JAVAPATH:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
