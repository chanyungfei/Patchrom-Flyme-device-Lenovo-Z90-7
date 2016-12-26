.class Lcom/android/server/StartShutdownService$2;
.super Landroid/os/Handler;
.source "StartShutdownService.java"


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
    .line 397
    iput-object p1, p0, Lcom/android/server/StartShutdownService$2;->this$0:Lcom/android/server/StartShutdownService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 399
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 446
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 402
    :pswitch_1
    iget-object v1, p0, Lcom/android/server/StartShutdownService$2;->this$0:Lcom/android/server/StartShutdownService;

    # getter for: Lcom/android/server/StartShutdownService;->mPolicy:Lcom/android/server/StartShutdownPolicy;
    invoke-static {v1}, Lcom/android/server/StartShutdownService;->access$100(Lcom/android/server/StartShutdownService;)Lcom/android/server/StartShutdownPolicy;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 403
    iget-object v1, p0, Lcom/android/server/StartShutdownService$2;->this$0:Lcom/android/server/StartShutdownService;

    # getter for: Lcom/android/server/StartShutdownService;->mPolicy:Lcom/android/server/StartShutdownPolicy;
    invoke-static {v1}, Lcom/android/server/StartShutdownService;->access$100(Lcom/android/server/StartShutdownService;)Lcom/android/server/StartShutdownPolicy;

    move-result-object v2

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcom/android/server/StartShutdownPolicy;->enableAutoStart(J)V

    goto :goto_0

    .line 408
    :pswitch_2
    iget-object v1, p0, Lcom/android/server/StartShutdownService$2;->this$0:Lcom/android/server/StartShutdownService;

    # getter for: Lcom/android/server/StartShutdownService;->mPolicy:Lcom/android/server/StartShutdownPolicy;
    invoke-static {v1}, Lcom/android/server/StartShutdownService;->access$100(Lcom/android/server/StartShutdownService;)Lcom/android/server/StartShutdownPolicy;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 409
    iget-object v1, p0, Lcom/android/server/StartShutdownService$2;->this$0:Lcom/android/server/StartShutdownService;

    # getter for: Lcom/android/server/StartShutdownService;->mPolicy:Lcom/android/server/StartShutdownPolicy;
    invoke-static {v1}, Lcom/android/server/StartShutdownService;->access$100(Lcom/android/server/StartShutdownService;)Lcom/android/server/StartShutdownPolicy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/StartShutdownPolicy;->disableAutoStart()V

    goto :goto_0

    .line 414
    :pswitch_3
    iget-object v1, p0, Lcom/android/server/StartShutdownService$2;->this$0:Lcom/android/server/StartShutdownService;

    # getter for: Lcom/android/server/StartShutdownService;->mPolicy:Lcom/android/server/StartShutdownPolicy;
    invoke-static {v1}, Lcom/android/server/StartShutdownService;->access$100(Lcom/android/server/StartShutdownService;)Lcom/android/server/StartShutdownPolicy;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 415
    iget-object v1, p0, Lcom/android/server/StartShutdownService$2;->this$0:Lcom/android/server/StartShutdownService;

    # getter for: Lcom/android/server/StartShutdownService;->mPolicy:Lcom/android/server/StartShutdownPolicy;
    invoke-static {v1}, Lcom/android/server/StartShutdownService;->access$100(Lcom/android/server/StartShutdownService;)Lcom/android/server/StartShutdownPolicy;

    move-result-object v2

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcom/android/server/StartShutdownPolicy;->enableAutoShutdown(J)V

    goto :goto_0

    .line 420
    :pswitch_4
    iget-object v1, p0, Lcom/android/server/StartShutdownService$2;->this$0:Lcom/android/server/StartShutdownService;

    # getter for: Lcom/android/server/StartShutdownService;->mPolicy:Lcom/android/server/StartShutdownPolicy;
    invoke-static {v1}, Lcom/android/server/StartShutdownService;->access$100(Lcom/android/server/StartShutdownService;)Lcom/android/server/StartShutdownPolicy;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 421
    iget-object v1, p0, Lcom/android/server/StartShutdownService$2;->this$0:Lcom/android/server/StartShutdownService;

    # getter for: Lcom/android/server/StartShutdownService;->mPolicy:Lcom/android/server/StartShutdownPolicy;
    invoke-static {v1}, Lcom/android/server/StartShutdownService;->access$100(Lcom/android/server/StartShutdownService;)Lcom/android/server/StartShutdownPolicy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/StartShutdownPolicy;->disableAutoShutdown()V

    goto :goto_0

    .line 426
    :pswitch_5
    const-string v2, "StartShutdownService"

    const-string v3, "shutdown device.."

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    iget-object v2, p0, Lcom/android/server/StartShutdownService$2;->this$0:Lcom/android/server/StartShutdownService;

    # getter for: Lcom/android/server/StartShutdownService;->mState:Lcom/android/server/StartShutdownService$State;
    invoke-static {v2}, Lcom/android/server/StartShutdownService;->access$200(Lcom/android/server/StartShutdownService;)Lcom/android/server/StartShutdownService$State;

    move-result-object v2

    sget-object v3, Lcom/android/server/StartShutdownService$State;->Idle:Lcom/android/server/StartShutdownService$State;

    if-ne v2, v3, :cond_3

    .line 428
    iget-object v2, p0, Lcom/android/server/StartShutdownService$2;->this$0:Lcom/android/server/StartShutdownService;

    # getter for: Lcom/android/server/StartShutdownService;->mSystemBusy:Z
    invoke-static {v2}, Lcom/android/server/StartShutdownService;->access$300(Lcom/android/server/StartShutdownService;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 429
    .local v0, "confirm":Z
    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/android/server/StartShutdownService$2;->this$0:Lcom/android/server/StartShutdownService;

    # getter for: Lcom/android/server/StartShutdownService;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/StartShutdownService;->access$400(Lcom/android/server/StartShutdownService;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/server/power/ShutdownThread;->shutdown(Landroid/content/Context;Z)V

    .line 430
    iget-object v1, p0, Lcom/android/server/StartShutdownService$2;->this$0:Lcom/android/server/StartShutdownService;

    sget-object v2, Lcom/android/server/StartShutdownService$State;->Shutdown:Lcom/android/server/StartShutdownService$State;

    # setter for: Lcom/android/server/StartShutdownService;->mState:Lcom/android/server/StartShutdownService$State;
    invoke-static {v1, v2}, Lcom/android/server/StartShutdownService;->access$202(Lcom/android/server/StartShutdownService;Lcom/android/server/StartShutdownService$State;)Lcom/android/server/StartShutdownService$State;

    goto/16 :goto_0

    .line 428
    .end local v0    # "confirm":Z
    :cond_2
    iget v2, p1, Landroid/os/Message;->arg1:I

    if-nez v2, :cond_1

    move v0, v1

    goto :goto_1

    .line 431
    :cond_3
    iget-object v2, p0, Lcom/android/server/StartShutdownService$2;->this$0:Lcom/android/server/StartShutdownService;

    # getter for: Lcom/android/server/StartShutdownService;->mState:Lcom/android/server/StartShutdownService$State;
    invoke-static {v2}, Lcom/android/server/StartShutdownService;->access$200(Lcom/android/server/StartShutdownService;)Lcom/android/server/StartShutdownService$State;

    move-result-object v2

    sget-object v3, Lcom/android/server/StartShutdownService$State;->Notify:Lcom/android/server/StartShutdownService$State;

    if-ne v2, v3, :cond_0

    .line 432
    iget-object v2, p0, Lcom/android/server/StartShutdownService$2;->this$0:Lcom/android/server/StartShutdownService;

    # getter for: Lcom/android/server/StartShutdownService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/StartShutdownService;->access$400(Lcom/android/server/StartShutdownService;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/android/server/power/ShutdownThread;->shutdown(Landroid/content/Context;Z)V

    .line 433
    iget-object v1, p0, Lcom/android/server/StartShutdownService$2;->this$0:Lcom/android/server/StartShutdownService;

    sget-object v2, Lcom/android/server/StartShutdownService$State;->Shutdown:Lcom/android/server/StartShutdownService$State;

    # setter for: Lcom/android/server/StartShutdownService;->mState:Lcom/android/server/StartShutdownService$State;
    invoke-static {v1, v2}, Lcom/android/server/StartShutdownService;->access$202(Lcom/android/server/StartShutdownService;Lcom/android/server/StartShutdownService$State;)Lcom/android/server/StartShutdownService$State;

    goto/16 :goto_0

    .line 438
    :pswitch_6
    iget-object v1, p0, Lcom/android/server/StartShutdownService$2;->this$0:Lcom/android/server/StartShutdownService;

    # invokes: Lcom/android/server/StartShutdownService;->handleLauncherReady()V
    invoke-static {v1}, Lcom/android/server/StartShutdownService;->access$500(Lcom/android/server/StartShutdownService;)V

    goto/16 :goto_0

    .line 441
    :pswitch_7
    iget-object v2, p0, Lcom/android/server/StartShutdownService$2;->this$0:Lcom/android/server/StartShutdownService;

    # getter for: Lcom/android/server/StartShutdownService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/StartShutdownService;->access$400(Lcom/android/server/StartShutdownService;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "poweroff_alarm_reboot"

    invoke-static {v2, v3, v1}, Lcom/android/server/power/ShutdownThread;->reboot(Landroid/content/Context;Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 399
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_7
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method
