.class public Lcom/uniplugin/sender/AReceiver$Maintwo;
.super Ljava/lang/Object;
.source "AReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uniplugin/sender/AReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Maintwo"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/uniplugin/sender/AReceiver;


# direct methods
.method public constructor <init>(Lcom/uniplugin/sender/AReceiver;Landroid/content/Context;)V
    .locals 0
    .param p2, "cn"    # Landroid/content/Context;

    .prologue
    .line 292
    iput-object p1, p0, Lcom/uniplugin/sender/AReceiver$Maintwo;->this$0:Lcom/uniplugin/sender/AReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 295
    return-void
.end method
