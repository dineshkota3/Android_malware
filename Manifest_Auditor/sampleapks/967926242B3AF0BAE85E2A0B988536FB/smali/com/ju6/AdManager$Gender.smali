.class public final enum Lcom/ju6/AdManager$Gender;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ju6/AdManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Gender"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/ju6/AdManager$Gender;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum FEMALE:Lcom/ju6/AdManager$Gender;

.field public static final enum MALE:Lcom/ju6/AdManager$Gender;

.field private static final synthetic a:[Lcom/ju6/AdManager$Gender;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 96
    new-instance v0, Lcom/ju6/AdManager$Gender;

    const-string v1, "MALE"

    invoke-direct {v0, v1, v2}, Lcom/ju6/AdManager$Gender;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ju6/AdManager$Gender;->MALE:Lcom/ju6/AdManager$Gender;

    new-instance v0, Lcom/ju6/AdManager$Gender;

    const-string v1, "FEMALE"

    invoke-direct {v0, v1, v3}, Lcom/ju6/AdManager$Gender;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ju6/AdManager$Gender;->FEMALE:Lcom/ju6/AdManager$Gender;

    .line 95
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/ju6/AdManager$Gender;

    sget-object v1, Lcom/ju6/AdManager$Gender;->MALE:Lcom/ju6/AdManager$Gender;

    aput-object v1, v0, v2

    sget-object v1, Lcom/ju6/AdManager$Gender;->FEMALE:Lcom/ju6/AdManager$Gender;

    aput-object v1, v0, v3

    sput-object v0, Lcom/ju6/AdManager$Gender;->a:[Lcom/ju6/AdManager$Gender;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 95
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ju6/AdManager$Gender;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/ju6/AdManager$Gender;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ju6/AdManager$Gender;

    return-object p0
.end method

.method public static values()[Lcom/ju6/AdManager$Gender;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/ju6/AdManager$Gender;->a:[Lcom/ju6/AdManager$Gender;

    array-length v1, v0

    new-array v2, v1, [Lcom/ju6/AdManager$Gender;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
