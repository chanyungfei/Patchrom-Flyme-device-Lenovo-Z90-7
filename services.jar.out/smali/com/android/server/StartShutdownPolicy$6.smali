.class Lcom/android/server/StartShutdownPolicy$6;
.super Landroid/os/Handler;
.source "StartShutdownPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/StartShutdownPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/StartShutdownPolicy;


# direct methods
.method constructor <init>(Lcom/android/server/StartShutdownPolicy;)V
    .locals 0

    .prologue
    .line 370
    iput-object p1, p0, Lcom/android/server/StartShutdownPolicy$6;->this$0:Lcom/android/server/StartShutdownPolicy;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 372
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 390
    :goto_0
    return-void

    .line 374
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/StartShutdownPolicy$6;->this$0:Lcom/android/server/StartShutdownPolicy;

    # getter for: Lcom/android/server/StartShutdownPolicy;->mDelay:I
    invoke-static {v0}, Lcom/android/server/StartShutdownPolicy;->access$1500(Lcom/android/server/StartShutdownPolicy;)I

    move-result v0

    if-lez v0, :cond_0

    .line 375
    iget-object v0, p0, Lcom/android/server/StartShutdownPolicy$6;->this$0:Lcom/android/server/StartShutdownPolicy;

    # getter for: Lcom/android/server/StartShutdownPolicy;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/StartShutdownPolicy;->access$1200(Lcom/android/server/StartShutdownPolicy;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/StartShutdownPolicy$6;->this$0:Lcom/android/server/StartShutdownPolicy;

    # getter for: Lcom/android/server/StartShutdownPolicy;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/server/StartShutdownPolicy;->access$1200(Lcom/android/server/StartShutdownPolicy;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 378
    iget-object v0, p0, Lcom/android/server/StartShutdownPolicy$6;->this$0:Lcom/android/server/StartShutdownPolicy;

    iget-object v1, p0, Lcom/android/server/StartShutdownPolicy$6;->this$0:Lcom/android/server/StartShutdownPolicy;

    # getter for: Lcom/android/server/StartShutdownPolicy;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/StartShutdownPolicy;->access$400(Lcom/android/server/StartShutdownPolicy;)Landroid/content/Context;

    move-result-object v1

    # invokes: Lcom/android/server/StartShutdownPolicy;->acquireScreenWakeLock(Landroid/content/Context;)V
    invoke-static {v0, v1}, Lcom/android/server/StartShutdownPolicy;->access$1600(Lcom/android/server/StartShutdownPolicy;Landroid/content/Context;)V

    .line 379
    iget-object v0, p0, Lcom/android/server/StartShutdownPolicy$6;->this$0:Lcom/android/server/StartShutdownPolicy;

    # invokes: Lcom/android/server/StartShutdownPolicy;->showAutoShutdownAlert()V
    invoke-static {v0}, Lcom/android/server/StartShutdownPolicy;->access$1700(Lcom/android/server/StartShutdownPolicy;)V

    .line 380
    iget-object v0, p0, Lcom/android/server/StartShutdownPolicy$6;->this$0:Lcom/android/server/StartShutdownPolicy;

    # operator-- for: Lcom/android/server/StartShutdownPolicy;->mDelay:I
    invoke-static {v0}, Lcom/android/server/StartShutdownPolicy;->access$1510(Lcom/android/server/StartShutdownPolicy;)I

    goto :goto_0

    .line 382
    :cond_0
    iget-object v0, p0, Lcom/android/server/StartShutdownPolicy$6;->this$0:Lcom/android/server/StartShutdownPolicy;

    # getter for: Lcom/android/server/StartShutdownPolicy;->mRingtone:Landroid/media/Ringtone;
    invoke-static {v0}, Lcom/android/server/StartShutdownPolicy;->access$1100(Lcom/android/server/StartShutdownPolicy;)Landroid/media/Ringtone;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 383
    iget-object v0, p0, Lcom/android/server/StartShutdownPolicy$6;->this$0:Lcom/android/server/StartShutdownPolicy;

    # getter for: Lcom/android/server/StartShutdownPolicy;->mRingtone:Landroid/media/Ringtone;
    invoke-static {v0}, Lcom/android/server/StartShutdownPolicy;->access$1100(Lcom/android/server/StartShutdownPolicy;)Landroid/media/Ringtone;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/Ringtone;->stop()V

    .line 385
    :cond_1
    iget-object v0, p0, Lcom/android/server/StartShutdownPolicy$6;->this$0:Lcom/android/server/StartShutdownPolicy;

    # getter for: Lcom/android/server/StartShutdownPolicy;->mCallback:Lcom/android/server/StartShutdownService$ServiceCallback;
    invoke-static {v0}, Lcom/android/server/StartShutdownPolicy;->access$1300(Lcom/android/server/StartShutdownPolicy;)Lcom/android/server/StartShutdownService$ServiceCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/StartShutdownService$ServiceCallback;->shutdownAction()V

    .line 386
    iget-object v0, p0, Lcom/android/server/StartShutdownPolicy$6;->this$0:Lcom/android/server/StartShutdownPolicy;

    # getter for: Lcom/android/server/StartShutdownPolicy;->mShutdownDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/android/server/StartShutdownPolicy;->access$300(Lcom/android/server/StartShutdownPolicy;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    goto :goto_0

    .line 372
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method
