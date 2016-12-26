.class Lcom/android/server/StartShutdownService$SSThread;
.super Ljava/lang/Thread;
.source "StartShutdownService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/StartShutdownService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SSThread"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mFactoryTest:I

.field mService:Lcom/android/server/StartShutdownService;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "factoryTest"    # I

    .prologue
    .line 184
    const-string v0, "StartShutdownService"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 185
    iput-object p1, p0, Lcom/android/server/StartShutdownService$SSThread;->mContext:Landroid/content/Context;

    .line 186
    iput p2, p0, Lcom/android/server/StartShutdownService$SSThread;->mFactoryTest:I

    .line 187
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 190
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 191
    new-instance v0, Lcom/android/server/StartShutdownService;

    iget-object v1, p0, Lcom/android/server/StartShutdownService$SSThread;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/android/server/StartShutdownService$SSThread;->mFactoryTest:I

    invoke-direct {v0, v1, v2}, Lcom/android/server/StartShutdownService;-><init>(Landroid/content/Context;I)V

    .line 193
    .local v0, "s":Lcom/android/server/StartShutdownService;
    const/4 v1, -0x4

    invoke-static {v1}, Landroid/os/Process;->setThreadPriority(I)V

    .line 195
    monitor-enter p0

    .line 196
    :try_start_0
    iput-object v0, p0, Lcom/android/server/StartShutdownService$SSThread;->mService:Lcom/android/server/StartShutdownService;

    .line 197
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 198
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 199
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 200
    return-void

    .line 198
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
