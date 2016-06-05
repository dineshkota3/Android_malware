.class public Lcn/domob/android/download/DownloadTask$TaskState;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/domob/android/download/DownloadTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TaskState"
.end annotation


# instance fields
.field protected a:Z


# direct methods
.method protected constructor <init>(Lcn/domob/android/download/DownloadTask;)V
    .locals 1

    .prologue
    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/domob/android/download/DownloadTask$TaskState;->a:Z

    return-void
.end method
