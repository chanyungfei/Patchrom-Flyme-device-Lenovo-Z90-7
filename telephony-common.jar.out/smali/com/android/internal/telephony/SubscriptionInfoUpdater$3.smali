.class Lcom/android/internal/telephony/SubscriptionInfoUpdater$3;
.super Landroid/content/BroadcastReceiver;
.source "SubscriptionInfoUpdater.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/SubscriptionInfoUpdater;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/SubscriptionInfoUpdater;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/SubscriptionInfoUpdater;)V
    .locals 0

    .prologue
    .line 267
    iput-object p1, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$3;->this$0:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v8, -0x1

    .line 270
    iget-object v5, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$3;->this$0:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    const-string v6, "[Receiver]+"

    # invokes: Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->access$000(Lcom/android/internal/telephony/SubscriptionInfoUpdater;Ljava/lang/String;)V

    .line 271
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 272
    .local v0, "action":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$3;->this$0:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Action: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    # invokes: Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->access$000(Lcom/android/internal/telephony/SubscriptionInfoUpdater;Ljava/lang/String;)V

    .line 274
    const-string v5, "android.net.conn.ESIM_MODE_CHANGED"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 275
    const-string v5, "esimMode"

    const/4 v6, 0x1

    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 276
    .local v1, "enable":Z
    # getter for: Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->access$300()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "VSIM_SUB"

    invoke-static {v5, v6, v8}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 277
    if-nez v1, :cond_0

    .line 278
    invoke-static {}, Lcom/android/internal/telephony/primarycard/PrimaryCardController;->getInstance()Lcom/android/internal/telephony/primarycard/PrimaryCardController;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/primarycard/PrimaryCardController;->clearSaveSubscriptions()V

    .line 279
    iget-object v5, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$3;->this$0:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    # invokes: Lcom/android/internal/telephony/SubscriptionInfoUpdater;->updateMbnState()Z
    invoke-static {v5}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->access$500(Lcom/android/internal/telephony/SubscriptionInfoUpdater;)Z

    .line 332
    .end local v1    # "enable":Z
    :cond_0
    :goto_0
    return-void

    .line 285
    :cond_1
    const-string v5, "org.codeaurora.intent.action.ACTION_RADIO_CAPABILITY_DONE"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 290
    iget-object v5, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$3;->this$0:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    iget-object v6, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$3;->this$0:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    const/16 v7, 0xd

    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 295
    :cond_2
    const-string v5, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    const-string v5, "android.intent.action.internal_sim_state_changed"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 300
    :cond_3
    const-string v5, "phone"

    invoke-virtual {p2, v5, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 302
    .local v4, "slotId":I
    iget-object v5, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$3;->this$0:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "slotId: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    # invokes: Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->access$000(Lcom/android/internal/telephony/SubscriptionInfoUpdater;Ljava/lang/String;)V

    .line 303
    if-eq v4, v8, :cond_0

    .line 307
    const-string v5, "ss"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 308
    .local v3, "simStatus":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$3;->this$0:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "simStatus: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    # invokes: Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->access$000(Lcom/android/internal/telephony/SubscriptionInfoUpdater;Ljava/lang/String;)V

    .line 310
    const-string v5, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 311
    const-string v5, "ABSENT"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 312
    iget-object v5, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$3;->this$0:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    iget-object v6, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$3;->this$0:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    const/4 v7, 0x4

    invoke-virtual {v6, v7, v4, v8}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->obtainMessage(III)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->sendMessage(Landroid/os/Message;)Z

    .line 331
    :cond_4
    :goto_1
    iget-object v5, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$3;->this$0:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    const-string v6, "[Receiver]-"

    # invokes: Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->access$000(Lcom/android/internal/telephony/SubscriptionInfoUpdater;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 313
    :cond_5
    const-string v5, "UNKNOWN"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 314
    iget-object v5, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$3;->this$0:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    iget-object v6, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$3;->this$0:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    const/4 v7, 0x7

    invoke-virtual {v6, v7, v4, v8}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->obtainMessage(III)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1

    .line 315
    :cond_6
    const-string v5, "CARD_IO_ERROR"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 316
    iget-object v5, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$3;->this$0:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    iget-object v6, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$3;->this$0:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    const/4 v7, 0x6

    invoke-virtual {v6, v7, v4, v8}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->obtainMessage(III)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1

    .line 318
    :cond_7
    iget-object v5, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$3;->this$0:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Ignoring simStatus: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    # invokes: Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->access$000(Lcom/android/internal/telephony/SubscriptionInfoUpdater;Ljava/lang/String;)V

    goto :goto_1

    .line 320
    :cond_8
    const-string v5, "android.intent.action.internal_sim_state_changed"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 321
    const-string v5, "LOCKED"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 322
    const-string v5, "reason"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 324
    .local v2, "reason":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$3;->this$0:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    iget-object v6, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$3;->this$0:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    const/4 v7, 0x5

    invoke-virtual {v6, v7, v4, v8, v2}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1

    .line 325
    .end local v2    # "reason":Ljava/lang/String;
    :cond_9
    const-string v5, "LOADED"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 326
    iget-object v5, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$3;->this$0:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    iget-object v6, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$3;->this$0:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    const/4 v7, 0x3

    invoke-virtual {v6, v7, v4, v8}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->obtainMessage(III)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_1

    .line 328
    :cond_a
    iget-object v5, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$3;->this$0:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Ignoring simStatus: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    # invokes: Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->access$000(Lcom/android/internal/telephony/SubscriptionInfoUpdater;Ljava/lang/String;)V

    goto/16 :goto_1
.end method
