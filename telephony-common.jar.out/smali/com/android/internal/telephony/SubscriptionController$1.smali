.class Lcom/android/internal/telephony/SubscriptionController$1;
.super Landroid/os/Handler;
.source "SubscriptionController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/SubscriptionController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/SubscriptionController;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/SubscriptionController;)V
    .locals 0

    .prologue
    .line 181
    iput-object p1, p0, Lcom/android/internal/telephony/SubscriptionController$1;->this$0:Lcom/android/internal/telephony/SubscriptionController;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 185
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 222
    :goto_0
    return-void

    .line 187
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 188
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_0

    .line 189
    iget-object v3, p0, Lcom/android/internal/telephony/SubscriptionController$1;->this$0:Lcom/android/internal/telephony/SubscriptionController;

    iput-boolean v7, v3, Lcom/android/internal/telephony/SubscriptionController;->mSuccess:Z

    .line 191
    :cond_0
    iget-object v3, p0, Lcom/android/internal/telephony/SubscriptionController$1;->this$0:Lcom/android/internal/telephony/SubscriptionController;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "EVENT_WRITE_MSISDN_DONE, mSuccess = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/SubscriptionController$1;->this$0:Lcom/android/internal/telephony/SubscriptionController;

    iget-boolean v5, v5, Lcom/android/internal/telephony/SubscriptionController;->mSuccess:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    # invokes: Lcom/android/internal/telephony/SubscriptionController;->logd(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/internal/telephony/SubscriptionController;->access$000(Lcom/android/internal/telephony/SubscriptionController;Ljava/lang/String;)V

    goto :goto_0

    .line 196
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_1
    iget-object v3, p0, Lcom/android/internal/telephony/SubscriptionController$1;->this$0:Lcom/android/internal/telephony/SubscriptionController;

    # setter for: Lcom/android/internal/telephony/SubscriptionController;->isPrimaryCardConfigProcess:Z
    invoke-static {v3, v6}, Lcom/android/internal/telephony/SubscriptionController;->access$102(Lcom/android/internal/telephony/SubscriptionController;Z)Z

    .line 197
    iget-object v3, p0, Lcom/android/internal/telephony/SubscriptionController$1;->this$0:Lcom/android/internal/telephony/SubscriptionController;

    # getter for: Lcom/android/internal/telephony/SubscriptionController;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v3}, Lcom/android/internal/telephony/SubscriptionController;->access$200(Lcom/android/internal/telephony/SubscriptionController;)Landroid/app/ProgressDialog;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/internal/telephony/SubscriptionController$1;->this$0:Lcom/android/internal/telephony/SubscriptionController;

    # getter for: Lcom/android/internal/telephony/SubscriptionController;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v3}, Lcom/android/internal/telephony/SubscriptionController;->access$200(Lcom/android/internal/telephony/SubscriptionController;)Landroid/app/ProgressDialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 198
    iget-object v3, p0, Lcom/android/internal/telephony/SubscriptionController$1;->this$0:Lcom/android/internal/telephony/SubscriptionController;

    # getter for: Lcom/android/internal/telephony/SubscriptionController;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v3}, Lcom/android/internal/telephony/SubscriptionController;->access$200(Lcom/android/internal/telephony/SubscriptionController;)Landroid/app/ProgressDialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/ProgressDialog;->dismiss()V

    .line 200
    :cond_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 201
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget v2, p1, Landroid/os/Message;->arg1:I

    .line 202
    .local v2, "subId":I
    iget-object v3, p0, Lcom/android/internal/telephony/SubscriptionController$1;->this$0:Lcom/android/internal/telephony/SubscriptionController;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "EVENT_STACK_READY: subId "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    # invokes: Lcom/android/internal/telephony/SubscriptionController;->logd(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/internal/telephony/SubscriptionController;->access$000(Lcom/android/internal/telephony/SubscriptionController;Ljava/lang/String;)V

    .line 203
    iget-object v3, p0, Lcom/android/internal/telephony/SubscriptionController$1;->this$0:Lcom/android/internal/telephony/SubscriptionController;

    iget-object v3, v3, Lcom/android/internal/telephony/SubscriptionController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "set_data"

    invoke-static {v3, v4, v6}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 204
    iget-object v3, p0, Lcom/android/internal/telephony/SubscriptionController$1;->this$0:Lcom/android/internal/telephony/SubscriptionController;

    # getter for: Lcom/android/internal/telephony/SubscriptionController;->mPendingPrimaryCardSubId:I
    invoke-static {v3}, Lcom/android/internal/telephony/SubscriptionController;->access$300(Lcom/android/internal/telephony/SubscriptionController;)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_2

    .line 205
    iget-object v3, p0, Lcom/android/internal/telephony/SubscriptionController$1;->this$0:Lcom/android/internal/telephony/SubscriptionController;

    const-string v4, "set pending defaultdataSubId!!"

    # invokes: Lcom/android/internal/telephony/SubscriptionController;->logd(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/internal/telephony/SubscriptionController;->access$000(Lcom/android/internal/telephony/SubscriptionController;Ljava/lang/String;)V

    .line 206
    iget-object v3, p0, Lcom/android/internal/telephony/SubscriptionController$1;->this$0:Lcom/android/internal/telephony/SubscriptionController;

    iget-object v3, v3, Lcom/android/internal/telephony/SubscriptionController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "set_data"

    invoke-static {v3, v4, v7}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 207
    iget-object v3, p0, Lcom/android/internal/telephony/SubscriptionController$1;->this$0:Lcom/android/internal/telephony/SubscriptionController;

    iget-object v4, p0, Lcom/android/internal/telephony/SubscriptionController$1;->this$0:Lcom/android/internal/telephony/SubscriptionController;

    # getter for: Lcom/android/internal/telephony/SubscriptionController;->mPendingPrimaryCardSubId:I
    invoke-static {v4}, Lcom/android/internal/telephony/SubscriptionController;->access$300(Lcom/android/internal/telephony/SubscriptionController;)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/SubscriptionController;->setDefaultDataSubId(I)V

    goto/16 :goto_0

    .line 210
    :cond_2
    invoke-static {}, Lcom/android/internal/telephony/primarycard/PrimaryCardController;->getInstance()Lcom/android/internal/telephony/primarycard/PrimaryCardController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/primarycard/PrimaryCardController;->getprimarySlot()I

    move-result v1

    .line 211
    .local v1, "primarySlot":I
    iget-object v3, p0, Lcom/android/internal/telephony/SubscriptionController$1;->this$0:Lcom/android/internal/telephony/SubscriptionController;

    invoke-virtual {v3, v2}, Lcom/android/internal/telephony/SubscriptionController;->setInternalDataSubId(I)V

    goto/16 :goto_0

    .line 217
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v1    # "primarySlot":I
    .end local v2    # "subId":I
    :pswitch_2
    iget-object v3, p0, Lcom/android/internal/telephony/SubscriptionController$1;->this$0:Lcom/android/internal/telephony/SubscriptionController;

    # invokes: Lcom/android/internal/telephony/SubscriptionController;->showProgressDialog()V
    invoke-static {v3}, Lcom/android/internal/telephony/SubscriptionController;->access$400(Lcom/android/internal/telephony/SubscriptionController;)V

    goto/16 :goto_0

    .line 185
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
