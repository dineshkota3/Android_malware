.class public Lcom/energysource/szj/embeded/SZJServiceInstance;
.super Ljava/lang/Object;
.source "SZJServiceInstance.java"


# static fields
.field private static szjServiceInstance:Lcom/energysource/szj/embeded/SZJServiceInstance;


# instance fields
.field private activity:Landroid/app/Activity;

.field private appsec:Ljava/lang/String;

.field private context:Landroid/content/Context;

.field private debug:Z

.field private debugListener:Lcom/energysource/szj/android/DebugListener;

.field private defaultSizeMap:Ljava/util/HashMap;

.field private destoryFlag:Z

.field private frameworkThread:Ljava/lang/Thread;

.field private framworkThreadFlag:Z

.field private loadClassFlag:Z

.field private me:Lcom/energysource/szj/embeded/ModuleEntity;

.field private modulesMap:Ljava/util/concurrent/ConcurrentHashMap;

.field private oldVersion:Ljava/lang/String;

.field private phoneHeight:I

.field private phoneWidht:I

.field private startLoadFlag:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    new-instance v0, Lcom/energysource/szj/embeded/SZJServiceInstance;

    invoke-direct {v0}, Lcom/energysource/szj/embeded/SZJServiceInstance;-><init>()V

    sput-object v0, Lcom/energysource/szj/embeded/SZJServiceInstance;->szjServiceInstance:Lcom/energysource/szj/embeded/SZJServiceInstance;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-boolean v0, p0, Lcom/energysource/szj/embeded/SZJServiceInstance;->framworkThreadFlag:Z

    .line 26
    iput-boolean v0, p0, Lcom/energysource/szj/embeded/SZJServiceInstance;->loadClassFlag:Z

    .line 29
    iput-boolean v0, p0, Lcom/energysource/szj/embeded/SZJServiceInstance;->startLoadFlag:Z

    .line 31
    iput-boolean v0, p0, Lcom/energysource/szj/embeded/SZJServiceInstance;->debug:Z

    .line 33
    iput-boolean v0, p0, Lcom/energysource/szj/embeded/SZJServiceInstance;->destoryFlag:Z

    .line 46
    return-void
.end method

.method public static getInstance()Lcom/energysource/szj/embeded/SZJServiceInstance;
    .locals 1

    .prologue
    .line 256
    sget-object v0, Lcom/energysource/szj/embeded/SZJServiceInstance;->szjServiceInstance:Lcom/energysource/szj/embeded/SZJServiceInstance;

    return-object v0
.end method


# virtual methods
.method public getActivity()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/energysource/szj/embeded/SZJServiceInstance;->activity:Landroid/app/Activity;

    return-object v0
.end method

.method public getAppsec()Ljava/lang/String;
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/energysource/szj/embeded/SZJServiceInstance;->appsec:Ljava/lang/String;

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 236
    iget-object v0, p0, Lcom/energysource/szj/embeded/SZJServiceInstance;->context:Landroid/content/Context;

    return-object v0
.end method

.method public getDebugListener()Lcom/energysource/szj/android/DebugListener;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/energysource/szj/embeded/SZJServiceInstance;->debugListener:Lcom/energysource/szj/android/DebugListener;

    return-object v0
.end method

.method public getFrameworkThread()Ljava/lang/Thread;
    .locals 1

    .prologue
    .line 226
    iget-object v0, p0, Lcom/energysource/szj/embeded/SZJServiceInstance;->frameworkThread:Ljava/lang/Thread;

    return-object v0
.end method

.method public getMe()Lcom/energysource/szj/embeded/ModuleEntity;
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lcom/energysource/szj/embeded/SZJServiceInstance;->me:Lcom/energysource/szj/embeded/ModuleEntity;

    return-object v0
.end method

.method public getModulesMap()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1

    .prologue
    .line 246
    iget-object v0, p0, Lcom/energysource/szj/embeded/SZJServiceInstance;->modulesMap:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method public getOldVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lcom/energysource/szj/embeded/SZJServiceInstance;->oldVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getPhoneHeight()I
    .locals 1

    .prologue
    .line 206
    iget v0, p0, Lcom/energysource/szj/embeded/SZJServiceInstance;->phoneHeight:I

    return v0
.end method

.method public getPhoneWidht()I
    .locals 1

    .prologue
    .line 196
    iget v0, p0, Lcom/energysource/szj/embeded/SZJServiceInstance;->phoneWidht:I

    return v0
.end method

.method public isDebug()Z
    .locals 1

    .prologue
    .line 121
    iget-boolean v0, p0, Lcom/energysource/szj/embeded/SZJServiceInstance;->debug:Z

    return v0
.end method

.method public isDestoryFlag()Z
    .locals 1

    .prologue
    .line 49
    iget-boolean v0, p0, Lcom/energysource/szj/embeded/SZJServiceInstance;->destoryFlag:Z

    return v0
.end method

.method public isFramworkThreadFlag()Z
    .locals 1

    .prologue
    .line 216
    iget-boolean v0, p0, Lcom/energysource/szj/embeded/SZJServiceInstance;->framworkThreadFlag:Z

    return v0
.end method

.method public isLoadClassFlag()Z
    .locals 1

    .prologue
    .line 176
    iget-boolean v0, p0, Lcom/energysource/szj/embeded/SZJServiceInstance;->loadClassFlag:Z

    return v0
.end method

.method public isStartLoadFlag()Z
    .locals 1

    .prologue
    .line 141
    iget-boolean v0, p0, Lcom/energysource/szj/embeded/SZJServiceInstance;->startLoadFlag:Z

    return v0
.end method

.method public setActivity(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 136
    iput-object p1, p0, Lcom/energysource/szj/embeded/SZJServiceInstance;->activity:Landroid/app/Activity;

    .line 137
    return-void
.end method

.method public setAppsec(Ljava/lang/String;)V
    .locals 0
    .param p1, "appsec"    # Ljava/lang/String;

    .prologue
    .line 161
    iput-object p1, p0, Lcom/energysource/szj/embeded/SZJServiceInstance;->appsec:Ljava/lang/String;

    .line 162
    return-void
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 241
    iput-object p1, p0, Lcom/energysource/szj/embeded/SZJServiceInstance;->context:Landroid/content/Context;

    .line 242
    return-void
.end method

.method public setDebug(Z)V
    .locals 0
    .param p1, "debug"    # Z

    .prologue
    .line 126
    iput-boolean p1, p0, Lcom/energysource/szj/embeded/SZJServiceInstance;->debug:Z

    .line 127
    return-void
.end method

.method public setDebugListener(Lcom/energysource/szj/android/DebugListener;)V
    .locals 0
    .param p1, "debugListener"    # Lcom/energysource/szj/android/DebugListener;

    .prologue
    .line 43
    iput-object p1, p0, Lcom/energysource/szj/embeded/SZJServiceInstance;->debugListener:Lcom/energysource/szj/android/DebugListener;

    .line 44
    return-void
.end method

.method public setDestoryFlag(Z)V
    .locals 0
    .param p1, "destoryFlag"    # Z

    .prologue
    .line 54
    iput-boolean p1, p0, Lcom/energysource/szj/embeded/SZJServiceInstance;->destoryFlag:Z

    .line 55
    return-void
.end method

.method public setFrameworkThread(Ljava/lang/Thread;)V
    .locals 0
    .param p1, "frameworkThread"    # Ljava/lang/Thread;

    .prologue
    .line 231
    iput-object p1, p0, Lcom/energysource/szj/embeded/SZJServiceInstance;->frameworkThread:Ljava/lang/Thread;

    .line 232
    return-void
.end method

.method public setFramworkThreadFlag(Z)V
    .locals 0
    .param p1, "framworkThreadFlag"    # Z

    .prologue
    .line 221
    iput-boolean p1, p0, Lcom/energysource/szj/embeded/SZJServiceInstance;->framworkThreadFlag:Z

    .line 222
    return-void
.end method

.method public setLoadClassFlag(Z)V
    .locals 0
    .param p1, "loadClassFlag"    # Z

    .prologue
    .line 181
    iput-boolean p1, p0, Lcom/energysource/szj/embeded/SZJServiceInstance;->loadClassFlag:Z

    .line 182
    return-void
.end method

.method public setMe(Lcom/energysource/szj/embeded/ModuleEntity;)V
    .locals 0
    .param p1, "me"    # Lcom/energysource/szj/embeded/ModuleEntity;

    .prologue
    .line 171
    iput-object p1, p0, Lcom/energysource/szj/embeded/SZJServiceInstance;->me:Lcom/energysource/szj/embeded/ModuleEntity;

    .line 172
    return-void
.end method

.method public setModulesMap(Ljava/util/concurrent/ConcurrentHashMap;)V
    .locals 0
    .param p1, "modulesMap"    # Ljava/util/concurrent/ConcurrentHashMap;

    .prologue
    .line 251
    iput-object p1, p0, Lcom/energysource/szj/embeded/SZJServiceInstance;->modulesMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 252
    return-void
.end method

.method public setOldVersion(Ljava/lang/String;)V
    .locals 0
    .param p1, "oldVersion"    # Ljava/lang/String;

    .prologue
    .line 191
    iput-object p1, p0, Lcom/energysource/szj/embeded/SZJServiceInstance;->oldVersion:Ljava/lang/String;

    .line 192
    return-void
.end method

.method public setPhoneHeight(I)V
    .locals 0
    .param p1, "phoneHeight"    # I

    .prologue
    .line 211
    iput p1, p0, Lcom/energysource/szj/embeded/SZJServiceInstance;->phoneHeight:I

    .line 212
    return-void
.end method

.method public setPhoneWidht(I)V
    .locals 0
    .param p1, "phoneWidht"    # I

    .prologue
    .line 201
    iput p1, p0, Lcom/energysource/szj/embeded/SZJServiceInstance;->phoneWidht:I

    .line 202
    return-void
.end method

.method public setStartLoadFlag(Z)V
    .locals 0
    .param p1, "startLoadFlag"    # Z

    .prologue
    .line 146
    iput-boolean p1, p0, Lcom/energysource/szj/embeded/SZJServiceInstance;->startLoadFlag:Z

    .line 148
    if-nez p1, :cond_0

    .line 150
    invoke-static {}, Lcom/energysource/szj/embeded/AdManager;->clearMemory()V

    .line 152
    :cond_0
    return-void
.end method
