.class Lcom/android/internal/telephony/dataconnection/DdsScheduler$DdsReservedState;
.super Lcom/android/internal/util/State;
.source "DdsScheduler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/dataconnection/DdsScheduler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DdsReservedState"
.end annotation


# static fields
.field static final TAG:Ljava/lang/String; = "DdsScheduler[DdsReservedState]"


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/dataconnection/DdsScheduler;


# direct methods
.method private constructor <init>(Lcom/android/internal/telephony/dataconnection/DdsScheduler;)V
    .locals 0

    .prologue
    .line 426
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DdsScheduler$DdsReservedState;->this$0:Lcom/android/internal/telephony/dataconnection/DdsScheduler;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/telephony/dataconnection/DdsScheduler;Lcom/android/internal/telephony/dataconnection/DdsScheduler$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/internal/telephony/dataconnection/DdsScheduler;
    .param p2, "x1"    # Lcom/android/internal/telephony/dataconnection/DdsScheduler$1;

    .prologue
    .line 426
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/DdsScheduler$DdsReservedState;-><init>(Lcom/android/internal/telephony/dataconnection/DdsScheduler;)V

    return-void
.end method

.method private handleOtherSubRequests()V
    .locals 4

    .prologue
    .line 430
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DdsScheduler$DdsReservedState;->this$0:Lcom/android/internal/telephony/dataconnection/DdsScheduler;

    invoke-virtual {v1}, Lcom/android/internal/telephony/dataconnection/DdsScheduler;->getFirstWaitingRequest()Landroid/net/NetworkRequest;

    move-result-object v0

    .line 431
    .local v0, "nr":Landroid/net/NetworkRequest;
    if-nez v0, :cond_0

    .line 432
    const-string v1, "DdsScheduler[DdsReservedState]"

    const-string v2, "No more requests to accept"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DdsScheduler$DdsReservedState;->this$0:Lcom/android/internal/telephony/dataconnection/DdsScheduler;

    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DdsScheduler$DdsReservedState;->this$0:Lcom/android/internal/telephony/dataconnection/DdsScheduler;

    # getter for: Lcom/android/internal/telephony/dataconnection/DdsScheduler;->mDdsAutoRevertState:Lcom/android/internal/telephony/dataconnection/DdsScheduler$DdsAutoRevertState;
    invoke-static {v2}, Lcom/android/internal/telephony/dataconnection/DdsScheduler;->access$1400(Lcom/android/internal/telephony/dataconnection/DdsScheduler;)Lcom/android/internal/telephony/dataconnection/DdsScheduler$DdsAutoRevertState;

    move-result-object v2

    # invokes: Lcom/android/internal/telephony/dataconnection/DdsScheduler;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v1, v2}, Lcom/android/internal/telephony/dataconnection/DdsScheduler;->access$1500(Lcom/android/internal/telephony/dataconnection/DdsScheduler;Lcom/android/internal/util/IState;)V

    .line 442
    :goto_0
    return-void

    .line 434
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DdsScheduler$DdsReservedState;->this$0:Lcom/android/internal/telephony/dataconnection/DdsScheduler;

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/dataconnection/DdsScheduler;->getSubIdFromNetworkRequest(Landroid/net/NetworkRequest;)I

    move-result v1

    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DdsScheduler$DdsReservedState;->this$0:Lcom/android/internal/telephony/dataconnection/DdsScheduler;

    invoke-virtual {v2}, Lcom/android/internal/telephony/dataconnection/DdsScheduler;->getCurrentDds()I

    move-result v2

    if-eq v1, v2, :cond_1

    .line 435
    const-string v1, "DdsScheduler[DdsReservedState]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Switch required for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DdsScheduler$DdsReservedState;->this$0:Lcom/android/internal/telephony/dataconnection/DdsScheduler;

    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DdsScheduler$DdsReservedState;->this$0:Lcom/android/internal/telephony/dataconnection/DdsScheduler;

    # getter for: Lcom/android/internal/telephony/dataconnection/DdsScheduler;->mDdsSwitchState:Lcom/android/internal/telephony/dataconnection/DdsScheduler$DdsSwitchState;
    invoke-static {v2}, Lcom/android/internal/telephony/dataconnection/DdsScheduler;->access$1000(Lcom/android/internal/telephony/dataconnection/DdsScheduler;)Lcom/android/internal/telephony/dataconnection/DdsScheduler$DdsSwitchState;

    move-result-object v2

    # invokes: Lcom/android/internal/telephony/dataconnection/DdsScheduler;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v1, v2}, Lcom/android/internal/telephony/dataconnection/DdsScheduler;->access$1600(Lcom/android/internal/telephony/dataconnection/DdsScheduler;Lcom/android/internal/util/IState;)V

    goto :goto_0

    .line 438
    :cond_1
    const-string v1, "DdsScheduler[DdsReservedState]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "This request could not get accepted, start over. nr = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DdsScheduler$DdsReservedState;->this$0:Lcom/android/internal/telephony/dataconnection/DdsScheduler;

    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DdsScheduler$DdsReservedState;->this$0:Lcom/android/internal/telephony/dataconnection/DdsScheduler;

    # getter for: Lcom/android/internal/telephony/dataconnection/DdsScheduler;->mDdsAutoRevertState:Lcom/android/internal/telephony/dataconnection/DdsScheduler$DdsAutoRevertState;
    invoke-static {v2}, Lcom/android/internal/telephony/dataconnection/DdsScheduler;->access$1400(Lcom/android/internal/telephony/dataconnection/DdsScheduler;)Lcom/android/internal/telephony/dataconnection/DdsScheduler$DdsAutoRevertState;

    move-result-object v2

    # invokes: Lcom/android/internal/telephony/dataconnection/DdsScheduler;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v1, v2}, Lcom/android/internal/telephony/dataconnection/DdsScheduler;->access$1700(Lcom/android/internal/telephony/dataconnection/DdsScheduler;Lcom/android/internal/util/IState;)V

    goto :goto_0
.end method


# virtual methods
.method public enter()V
    .locals 2

    .prologue
    .line 446
    const-string v0, "DdsScheduler[DdsReservedState]"

    const-string v1, "Enter"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DdsScheduler$DdsReservedState;->this$0:Lcom/android/internal/telephony/dataconnection/DdsScheduler;

    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/DdsScheduler;->acceptWaitingRequest()Z

    move-result v0

    if-nez v0, :cond_0

    .line 448
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DdsScheduler$DdsReservedState;->handleOtherSubRequests()V

    .line 450
    :cond_0
    return-void
.end method

.method public exit()V
    .locals 2

    .prologue
    .line 454
    const-string v0, "DdsScheduler[DdsReservedState]"

    const-string v1, "Exit"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v2, 0x1

    .line 459
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 507
    :pswitch_0
    const-string v2, "DdsScheduler[DdsReservedState]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unknown msg = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 508
    const/4 v2, 0x0

    :cond_0
    :goto_0
    return v2

    .line 461
    :pswitch_1
    const-string v3, "DdsScheduler[DdsReservedState]"

    const-string v4, "REQ_DDS_ALLOCATION"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/net/NetworkRequest;

    .line 464
    .local v1, "n":Landroid/net/NetworkRequest;
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DdsScheduler$DdsReservedState;->this$0:Lcom/android/internal/telephony/dataconnection/DdsScheduler;

    invoke-virtual {v3, v1}, Lcom/android/internal/telephony/dataconnection/DdsScheduler;->getSubIdFromNetworkRequest(Landroid/net/NetworkRequest;)I

    move-result v3

    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DdsScheduler$DdsReservedState;->this$0:Lcom/android/internal/telephony/dataconnection/DdsScheduler;

    invoke-virtual {v4}, Lcom/android/internal/telephony/dataconnection/DdsScheduler;->getCurrentDds()I

    move-result v4

    if-ne v3, v4, :cond_1

    .line 465
    const-string v3, "DdsScheduler[DdsReservedState]"

    const-string v4, "Accepting simultaneous request for current sub"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DdsScheduler$DdsReservedState;->this$0:Lcom/android/internal/telephony/dataconnection/DdsScheduler;

    invoke-virtual {v3, v1}, Lcom/android/internal/telephony/dataconnection/DdsScheduler;->notifyRequestAccepted(Landroid/net/NetworkRequest;)V

    goto :goto_0

    .line 467
    :cond_1
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DdsScheduler$DdsReservedState;->this$0:Lcom/android/internal/telephony/dataconnection/DdsScheduler;

    invoke-virtual {v3}, Lcom/android/internal/telephony/dataconnection/DdsScheduler;->isMultiDataSupported()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 468
    const-string v3, "DdsScheduler[DdsReservedState]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Incoming request is for on-demand subscription, n = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DdsScheduler$DdsReservedState;->this$0:Lcom/android/internal/telephony/dataconnection/DdsScheduler;

    # invokes: Lcom/android/internal/telephony/dataconnection/DdsScheduler;->requestPsAttach(Landroid/net/NetworkRequest;)V
    invoke-static {v3, v1}, Lcom/android/internal/telephony/dataconnection/DdsScheduler;->access$1800(Lcom/android/internal/telephony/dataconnection/DdsScheduler;Landroid/net/NetworkRequest;)V

    goto :goto_0

    .line 476
    .end local v1    # "n":Landroid/net/NetworkRequest;
    :pswitch_2
    const-string v3, "DdsScheduler[DdsReservedState]"

    const-string v4, "REQ_DDS_FREE | EVENT_SET_DDS_DONE"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    iget v3, p1, Landroid/os/Message;->what:I

    const v4, 0x84007

    if-ne v3, v4, :cond_2

    .line 480
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DdsScheduler$DdsReservedState;->this$0:Lcom/android/internal/telephony/dataconnection/DdsScheduler;

    # setter for: Lcom/android/internal/telephony/dataconnection/DdsScheduler;->mIsInterruptBySetDefaultSubId:Z
    invoke-static {v3, v2}, Lcom/android/internal/telephony/dataconnection/DdsScheduler;->access$1902(Lcom/android/internal/telephony/dataconnection/DdsScheduler;Z)Z

    .line 483
    :cond_2
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DdsScheduler$DdsReservedState;->this$0:Lcom/android/internal/telephony/dataconnection/DdsScheduler;

    invoke-virtual {v3}, Lcom/android/internal/telephony/dataconnection/DdsScheduler;->acceptWaitingRequest()Z

    move-result v3

    if-nez v3, :cond_3

    .line 484
    const-string v3, "DdsScheduler[DdsReservedState]"

    const-string v4, "Can\'t process next in this DDS"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DdsScheduler$DdsReservedState;->handleOtherSubRequests()V

    goto :goto_0

    .line 487
    :cond_3
    const-string v3, "DdsScheduler[DdsReservedState]"

    const-string v4, "Processing next in same DDS"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 493
    :pswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 494
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Landroid/net/NetworkRequest;

    .line 495
    .restart local v1    # "n":Landroid/net/NetworkRequest;
    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_4

    .line 496
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DdsScheduler$DdsReservedState;->this$0:Lcom/android/internal/telephony/dataconnection/DdsScheduler;

    invoke-virtual {v3, v1}, Lcom/android/internal/telephony/dataconnection/DdsScheduler;->updateCurrentDds(Landroid/net/NetworkRequest;)V

    .line 497
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DdsScheduler$DdsReservedState;->this$0:Lcom/android/internal/telephony/dataconnection/DdsScheduler;

    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DdsScheduler$DdsReservedState;->this$0:Lcom/android/internal/telephony/dataconnection/DdsScheduler;

    # getter for: Lcom/android/internal/telephony/dataconnection/DdsScheduler;->mPsAttachReservedState:Lcom/android/internal/telephony/dataconnection/DdsScheduler$PsAttachReservedState;
    invoke-static {v4}, Lcom/android/internal/telephony/dataconnection/DdsScheduler;->access$2000(Lcom/android/internal/telephony/dataconnection/DdsScheduler;)Lcom/android/internal/telephony/dataconnection/DdsScheduler$PsAttachReservedState;

    move-result-object v4

    # invokes: Lcom/android/internal/telephony/dataconnection/DdsScheduler;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v3, v4}, Lcom/android/internal/telephony/dataconnection/DdsScheduler;->access$2100(Lcom/android/internal/telephony/dataconnection/DdsScheduler;Lcom/android/internal/util/IState;)V

    goto/16 :goto_0

    .line 499
    :cond_4
    const-string v3, "DdsScheduler[DdsReservedState]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Switch failed, ignore the req = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 501
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DdsScheduler$DdsReservedState;->this$0:Lcom/android/internal/telephony/dataconnection/DdsScheduler;

    invoke-virtual {v3, v1}, Lcom/android/internal/telephony/dataconnection/DdsScheduler;->removeRequest(Landroid/net/NetworkRequest;)V

    goto/16 :goto_0

    .line 459
    nop

    :pswitch_data_0
    .packed-switch 0x84000
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
