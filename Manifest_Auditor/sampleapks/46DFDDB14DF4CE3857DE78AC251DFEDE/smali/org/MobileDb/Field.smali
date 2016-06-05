.class public Lorg/MobileDb/Field;
.super Ljava/lang/Object;
.source "Field.java"


# static fields
.field public static BINARY:I

.field public static INT:I

.field public static NAME:I

.field public static NONE:I

.field public static SHORT_INT:I

.field public static SMALL_INT:I

.field public static TEXT:I

.field public static TIME:I


# instance fields
.field public name:Ljava/lang/String;

.field public type:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    const/4 v0, 0x0

    sput v0, Lorg/MobileDb/Field;->NONE:I

    .line 14
    const/4 v0, 0x2

    sput v0, Lorg/MobileDb/Field;->SMALL_INT:I

    .line 15
    const/4 v0, 0x3

    sput v0, Lorg/MobileDb/Field;->SHORT_INT:I

    .line 16
    const/4 v0, 0x4

    sput v0, Lorg/MobileDb/Field;->INT:I

    .line 17
    const/4 v0, 0x5

    sput v0, Lorg/MobileDb/Field;->TIME:I

    .line 18
    const/4 v0, 0x6

    sput v0, Lorg/MobileDb/Field;->NAME:I

    .line 19
    const/4 v0, 0x7

    sput v0, Lorg/MobileDb/Field;->TEXT:I

    .line 20
    const/16 v0, 0x8

    sput v0, Lorg/MobileDb/Field;->BINARY:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    sget v0, Lorg/MobileDb/Field;->NONE:I

    iput v0, p0, Lorg/MobileDb/Field;->type:I

    .line 28
    const-string v0, ""

    iput-object v0, p0, Lorg/MobileDb/Field;->name:Ljava/lang/String;

    .line 29
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput p1, p0, Lorg/MobileDb/Field;->type:I

    .line 34
    iput-object p2, p0, Lorg/MobileDb/Field;->name:Ljava/lang/String;

    .line 35
    return-void
.end method
