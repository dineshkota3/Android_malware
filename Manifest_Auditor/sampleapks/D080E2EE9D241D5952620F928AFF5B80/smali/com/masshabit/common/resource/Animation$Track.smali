.class public Lcom/masshabit/common/resource/Animation$Track;
.super Ljava/lang/Object;
.source "Animation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/masshabit/common/resource/Animation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Track"
.end annotation


# instance fields
.field public mBitmaps:[Landroid/graphics/Bitmap;

.field public mDuration:I

.field public mDurations:[J

.field public mLoop:Z

.field public mName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
