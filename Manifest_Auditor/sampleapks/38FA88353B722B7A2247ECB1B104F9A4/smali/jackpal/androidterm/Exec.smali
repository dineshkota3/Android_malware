.class public final Ljackpal/androidterm/Exec;
.super Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "androidterm"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native close(Ljava/io/FileDescriptor;)V
.end method

.method public static native createSubprocess(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[I)Ljava/io/FileDescriptor;
.end method

.method public static native setPtyWindowSize(Ljava/io/FileDescriptor;IIII)V
.end method

.method public static native waitFor(I)I
.end method
