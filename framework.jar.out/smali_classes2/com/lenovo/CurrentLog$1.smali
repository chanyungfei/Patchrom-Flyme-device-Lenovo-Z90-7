.class Lcom/lenovo/CurrentLog$1;
.super Landroid/os/Handler;
.source "CurrentLog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/CurrentLog;-><init>(Landroid/content/Context;Landroid/os/Looper;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/CurrentLog;


# direct methods
.method constructor <init>(Lcom/lenovo/CurrentLog;Landroid/os/Looper;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Looper;

    .prologue
    .line 66
    iput-object p1, p0, Lcom/lenovo/CurrentLog$1;->this$0:Lcom/lenovo/CurrentLog;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v2, 0x5

    .line 69
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 105
    :cond_0
    :goto_0
    return-void

    .line 71
    :pswitch_0
    iget-object v1, p0, Lcom/lenovo/CurrentLog$1;->this$0:Lcom/lenovo/CurrentLog;

    iget v2, p1, Landroid/os/Message;->arg1:I

    # invokes: Lcom/lenovo/CurrentLog;->foregroundActivitiesChanged(I)Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/lenovo/CurrentLog;->access$000(Lcom/lenovo/CurrentLog;I)Ljava/lang/String;

    goto :goto_0

    .line 76
    :pswitch_1
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/CurrentLog$1;->this$0:Lcom/lenovo/CurrentLog;

    iget-object v2, v2, Lcom/lenovo/CurrentLog;->mProcessObserver:Landroid/app/IProcessObserver;

    invoke-interface {v1, v2}, Landroid/app/IActivityManager;->registerProcessObserver(Landroid/app/IProcessObserver;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 78
    :catch_0
    move-exception v1

    goto :goto_0

    .line 83
    :pswitch_2
    iget-object v1, p0, Lcom/lenovo/CurrentLog$1;->this$0:Lcom/lenovo/CurrentLog;

    # getter for: Lcom/lenovo/CurrentLog;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/lenovo/CurrentLog;->access$100(Lcom/lenovo/CurrentLog;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 86
    iget-object v1, p0, Lcom/lenovo/CurrentLog$1;->this$0:Lcom/lenovo/CurrentLog;

    # getter for: Lcom/lenovo/CurrentLog;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/lenovo/CurrentLog;->access$100(Lcom/lenovo/CurrentLog;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 90
    :pswitch_3
    iget-object v1, p0, Lcom/lenovo/CurrentLog$1;->this$0:Lcom/lenovo/CurrentLog;

    # getter for: Lcom/lenovo/CurrentLog;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/lenovo/CurrentLog;->access$100(Lcom/lenovo/CurrentLog;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 91
    iget-object v1, p0, Lcom/lenovo/CurrentLog$1;->this$0:Lcom/lenovo/CurrentLog;

    # getter for: Lcom/lenovo/CurrentLog;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/lenovo/CurrentLog;->access$100(Lcom/lenovo/CurrentLog;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0

    .line 96
    :pswitch_4
    iget-object v1, p0, Lcom/lenovo/CurrentLog$1;->this$0:Lcom/lenovo/CurrentLog;

    invoke-virtual {v1}, Lcom/lenovo/CurrentLog;->updateLog()V

    .line 97
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 98
    .local v0, "begin":Landroid/os/Message;
    iput v2, v0, Landroid/os/Message;->what:I

    .line 99
    iget-object v1, p0, Lcom/lenovo/CurrentLog$1;->this$0:Lcom/lenovo/CurrentLog;

    # getter for: Lcom/lenovo/CurrentLog;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/lenovo/CurrentLog;->access$100(Lcom/lenovo/CurrentLog;)Landroid/os/Handler;

    move-result-object v1

    const-wide/16 v2, 0x1388

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 69
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
