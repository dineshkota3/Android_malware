.class public Lad/notify/SettingsSet;
.super Ljava/lang/Object;
.source "SettingsSet.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public isFirstStart:Z

.field public sms:Ljava/lang/String;

.field public time:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    const-string v0, ""

    iput-object v0, p0, Lad/notify/SettingsSet;->sms:Ljava/lang/String;

    .line 7
    return-void
.end method
