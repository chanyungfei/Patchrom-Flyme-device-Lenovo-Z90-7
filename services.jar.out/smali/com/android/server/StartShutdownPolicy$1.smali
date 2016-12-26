.class Lcom/android/server/StartShutdownPolicy$1;
.super Landroid/content/BroadcastReceiver;
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
    .line 204
    iput-object p1, p0, Lcom/android/server/StartShutdownPolicy$1;->this$0:Lcom/android/server/StartShutdownPolicy;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 206
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 207
    .local v0, "action":Ljava/lang/String;
    const-string v1, "com.android.startshutdown.AUTO_SHUTDOWN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 209
    const-string v1, "Long_time"

    const-wide/16 v6, 0x0

    invoke-virtual {p2, v1, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    .line 210
    .local v4, "setFor":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 211
    .local v2, "now":J
    const-wide/32 v6, 0x1b7740

    add-long/2addr v6, v4

    cmp-long v1, v2, v6

    if-lez v1, :cond_1

    .line 233
    .end local v2    # "now":J
    .end local v4    # "setFor":J
    :cond_0
    :goto_0
    return-void

    .line 214
    .restart local v2    # "now":J
    .restart local v4    # "setFor":J
    :cond_1
    iget-object v1, p0, Lcom/android/server/StartShutdownPolicy$1;->this$0:Lcom/android/server/StartShutdownPolicy;

    # invokes: Lcom/android/server/StartShutdownPolicy;->handleAutoShutdown()V
    invoke-static {v1}, Lcom/android/server/StartShutdownPolicy;->access$000(Lcom/android/server/StartShutdownPolicy;)V

    goto :goto_0

    .line 215
    .end local v2    # "now":J
    .end local v4    # "setFor":J
    :cond_2
    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 217
    :cond_3
    iget-object v1, p0, Lcom/android/server/StartShutdownPolicy$1;->this$0:Lcom/android/server/StartShutdownPolicy;

    invoke-virtual {v1}, Lcom/android/server/StartShutdownPolicy;->isAutoStartTimeSet()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 218
    iget-object v1, p0, Lcom/android/server/StartShutdownPolicy$1;->this$0:Lcom/android/server/StartShutdownPolicy;

    iget-object v6, p0, Lcom/android/server/StartShutdownPolicy$1;->this$0:Lcom/android/server/StartShutdownPolicy;

    # getter for: Lcom/android/server/StartShutdownPolicy;->mStartMillisSeconds:J
    invoke-static {v6}, Lcom/android/server/StartShutdownPolicy;->access$100(Lcom/android/server/StartShutdownPolicy;)J

    move-result-wide v6

    invoke-virtual {v1, v6, v7}, Lcom/android/server/StartShutdownPolicy;->enableAutoStart(J)V

    .line 220
    :cond_4
    iget-object v1, p0, Lcom/android/server/StartShutdownPolicy$1;->this$0:Lcom/android/server/StartShutdownPolicy;

    invoke-virtual {v1}, Lcom/android/server/StartShutdownPolicy;->isAutoShutdownTimeSet()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 221
    iget-object v1, p0, Lcom/android/server/StartShutdownPolicy$1;->this$0:Lcom/android/server/StartShutdownPolicy;

    iget-object v6, p0, Lcom/android/server/StartShutdownPolicy$1;->this$0:Lcom/android/server/StartShutdownPolicy;

    # getter for: Lcom/android/server/StartShutdownPolicy;->mShutdownMillisSeconds:J
    invoke-static {v6}, Lcom/android/server/StartShutdownPolicy;->access$200(Lcom/android/server/StartShutdownPolicy;)J

    move-result-wide v6

    invoke-virtual {v1, v6, v7}, Lcom/android/server/StartShutdownPolicy;->enableAutoShutdown(J)V

    goto :goto_0

    .line 224
    :cond_5
    iget-object v1, p0, Lcom/android/server/StartShutdownPolicy$1;->this$0:Lcom/android/server/StartShutdownPolicy;

    # getter for: Lcom/android/server/StartShutdownPolicy;->mShutdownDialog:Landroid/app/AlertDialog;
    invoke-static {v1}, Lcom/android/server/StartShutdownPolicy;->access$300(Lcom/android/server/StartShutdownPolicy;)Landroid/app/AlertDialog;

    move-result-object v1

    if-eqz v1, :cond_6

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 226
    iget-object v1, p0, Lcom/android/server/StartShutdownPolicy$1;->this$0:Lcom/android/server/StartShutdownPolicy;

    iget-object v6, p0, Lcom/android/server/StartShutdownPolicy$1;->this$0:Lcom/android/server/StartShutdownPolicy;

    # getter for: Lcom/android/server/StartShutdownPolicy;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/android/server/StartShutdownPolicy;->access$400(Lcom/android/server/StartShutdownPolicy;)Landroid/content/Context;

    move-result-object v6

    # invokes: Lcom/android/server/StartShutdownPolicy;->releaseAfterScreenOffWakeLock(Landroid/content/Context;)V
    invoke-static {v1, v6}, Lcom/android/server/StartShutdownPolicy;->access$500(Lcom/android/server/StartShutdownPolicy;Landroid/content/Context;)V

    .line 227
    iget-object v1, p0, Lcom/android/server/StartShutdownPolicy$1;->this$0:Lcom/android/server/StartShutdownPolicy;

    iget-object v6, p0, Lcom/android/server/StartShutdownPolicy$1;->this$0:Lcom/android/server/StartShutdownPolicy;

    # getter for: Lcom/android/server/StartShutdownPolicy;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/android/server/StartShutdownPolicy;->access$400(Lcom/android/server/StartShutdownPolicy;)Landroid/content/Context;

    move-result-object v6

    # invokes: Lcom/android/server/StartShutdownPolicy;->acquireAfterScreenOffWakeLock(Landroid/content/Context;)V
    invoke-static {v1, v6}, Lcom/android/server/StartShutdownPolicy;->access$600(Lcom/android/server/StartShutdownPolicy;Landroid/content/Context;)V

    goto :goto_0

    .line 228
    :cond_6
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 229
    iget-object v1, p0, Lcom/android/server/StartShutdownPolicy$1;->this$0:Lcom/android/server/StartShutdownPolicy;

    iget-object v6, p0, Lcom/android/server/StartShutdownPolicy$1;->this$0:Lcom/android/server/StartShutdownPolicy;

    # getter for: Lcom/android/server/StartShutdownPolicy;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/android/server/StartShutdownPolicy;->access$400(Lcom/android/server/StartShutdownPolicy;)Landroid/content/Context;

    move-result-object v6

    # invokes: Lcom/android/server/StartShutdownPolicy;->releaseAfterScreenOffWakeLock(Landroid/content/Context;)V
    invoke-static {v1, v6}, Lcom/android/server/StartShutdownPolicy;->access$500(Lcom/android/server/StartShutdownPolicy;Landroid/content/Context;)V

    goto :goto_0

    .line 230
    :cond_7
    const-string v1, "lenovo.intent.action.TIMELY_SHUTDOWN"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 231
    iget-object v1, p0, Lcom/android/server/StartShutdownPolicy$1;->this$0:Lcom/android/server/StartShutdownPolicy;

    # invokes: Lcom/android/server/StartShutdownPolicy;->handleAutoShutdown()V
    invoke-static {v1}, Lcom/android/server/StartShutdownPolicy;->access$000(Lcom/android/server/StartShutdownPolicy;)V

    goto/16 :goto_0
.end method
