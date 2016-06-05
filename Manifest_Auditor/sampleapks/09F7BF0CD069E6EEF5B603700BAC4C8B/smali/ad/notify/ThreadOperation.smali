.class public Lad/notify/ThreadOperation;
.super Ljava/lang/Object;
.source "ThreadOperation.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private _id:I

.field private _listener:Lad/notify/ThreadOperationListener;

.field private _obj:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lad/notify/ThreadOperationListener;ILjava/lang/Object;)V
    .locals 1
    .param p1, "listener"    # Lad/notify/ThreadOperationListener;
    .param p2, "id"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const/4 v0, 0x0

    iput-object v0, p0, Lad/notify/ThreadOperation;->_listener:Lad/notify/ThreadOperationListener;

    .line 19
    const/4 v0, 0x0

    iput v0, p0, Lad/notify/ThreadOperation;->_id:I

    .line 24
    iput-object p1, p0, Lad/notify/ThreadOperation;->_listener:Lad/notify/ThreadOperationListener;

    .line 25
    iput p2, p0, Lad/notify/ThreadOperation;->_id:I

    .line 26
    iput-object p3, p0, Lad/notify/ThreadOperation;->_obj:Ljava/lang/Object;

    .line 27
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 31
    iget-object v0, p0, Lad/notify/ThreadOperation;->_listener:Lad/notify/ThreadOperationListener;

    iget v1, p0, Lad/notify/ThreadOperation;->_id:I

    iget-object v2, p0, Lad/notify/ThreadOperation;->_obj:Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lad/notify/ThreadOperationListener;->threadOperationRun(ILjava/lang/Object;)V

    .line 32
    return-void
.end method
