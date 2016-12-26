.class Lcom/android/internal/os/InstallerConnection$2;
.super Ljava/lang/Object;
.source "InstallerConnection.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/InstallerConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/os/InstallerConnection;


# direct methods
.method constructor <init>(Lcom/android/internal/os/InstallerConnection;)V
    .locals 0

    .prologue
    .line 351
    iput-object p1, p0, Lcom/android/internal/os/InstallerConnection$2;->this$0:Lcom/android/internal/os/InstallerConnection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 354
    iget-object v2, p0, Lcom/android/internal/os/InstallerConnection$2;->this$0:Lcom/android/internal/os/InstallerConnection;

    iget-object v3, v2, Lcom/android/internal/os/InstallerConnection;->mResponses:Landroid/util/SparseArray;

    monitor-enter v3

    .line 355
    const/4 v0, 0x0

    .line 356
    .local v0, "buflen":I
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/os/InstallerConnection$2;->this$0:Lcom/android/internal/os/InstallerConnection;

    # invokes: Lcom/android/internal/os/InstallerConnection;->readReply()I
    invoke-static {v2}, Lcom/android/internal/os/InstallerConnection;->access$100(Lcom/android/internal/os/InstallerConnection;)I

    move-result v0

    if-ltz v0, :cond_0

    .line 357
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/android/internal/os/InstallerConnection$2;->this$0:Lcom/android/internal/os/InstallerConnection;

    # getter for: Lcom/android/internal/os/InstallerConnection;->buf:[B
    invoke-static {v2}, Lcom/android/internal/os/InstallerConnection;->access$200(Lcom/android/internal/os/InstallerConnection;)[B

    move-result-object v2

    const/4 v4, 0x0

    invoke-direct {v1, v2, v4, v0}, Ljava/lang/String;-><init>([BII)V

    .line 359
    .local v1, "s":Ljava/lang/String;
    const-string v2, "InstallerConnection"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "put: id = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/os/InstallerConnection$2;->this$0:Lcom/android/internal/os/InstallerConnection;

    iget v5, v5, Lcom/android/internal/os/InstallerConnection;->id:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " s = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " buflen:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    iget-object v2, p0, Lcom/android/internal/os/InstallerConnection$2;->this$0:Lcom/android/internal/os/InstallerConnection;

    iget-object v2, v2, Lcom/android/internal/os/InstallerConnection;->mResponses:Landroid/util/SparseArray;

    iget-object v4, p0, Lcom/android/internal/os/InstallerConnection$2;->this$0:Lcom/android/internal/os/InstallerConnection;

    iget v4, v4, Lcom/android/internal/os/InstallerConnection;->id:I

    invoke-virtual {v2, v4, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 362
    iget-object v2, p0, Lcom/android/internal/os/InstallerConnection$2;->this$0:Lcom/android/internal/os/InstallerConnection;

    iget-object v2, v2, Lcom/android/internal/os/InstallerConnection;->mResponses:Landroid/util/SparseArray;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    goto :goto_0

    .line 364
    .end local v1    # "s":Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_0
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 366
    iget-object v2, p0, Lcom/android/internal/os/InstallerConnection$2;->this$0:Lcom/android/internal/os/InstallerConnection;

    iget-boolean v2, v2, Lcom/android/internal/os/InstallerConnection;->needPolling:Z

    if-eqz v2, :cond_1

    .line 367
    iget-object v2, p0, Lcom/android/internal/os/InstallerConnection$2;->this$0:Lcom/android/internal/os/InstallerConnection;

    iget-object v2, v2, Lcom/android/internal/os/InstallerConnection;->mHandler:Landroid/os/Handler;

    const-wide/16 v4, 0xa

    invoke-virtual {v2, p0, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 369
    :cond_1
    return-void
.end method
