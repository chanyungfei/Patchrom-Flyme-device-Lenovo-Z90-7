.class Lcom/android/server/StartShutdownService$1;
.super Ljava/lang/Object;
.source "StartShutdownService.java"

# interfaces
.implements Lcom/android/server/StartShutdownService$ServiceCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/StartShutdownService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/StartShutdownService;


# direct methods
.method constructor <init>(Lcom/android/server/StartShutdownService;)V
    .locals 0

    .prologue
    .line 156
    iput-object p1, p0, Lcom/android/server/StartShutdownService$1;->this$0:Lcom/android/server/StartShutdownService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public shutdownAction()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 158
    iget-object v0, p0, Lcom/android/server/StartShutdownService$1;->this$0:Lcom/android/server/StartShutdownService;

    # getter for: Lcom/android/server/StartShutdownService;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/StartShutdownService;->access$000(Lcom/android/server/StartShutdownService;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/StartShutdownService$1;->this$0:Lcom/android/server/StartShutdownService;

    # getter for: Lcom/android/server/StartShutdownService;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/server/StartShutdownService;->access$000(Lcom/android/server/StartShutdownService;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x5

    invoke-virtual {v1, v2, v3, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 159
    return-void
.end method
