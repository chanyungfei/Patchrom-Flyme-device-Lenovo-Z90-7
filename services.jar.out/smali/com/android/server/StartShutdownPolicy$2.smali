.class Lcom/android/server/StartShutdownPolicy$2;
.super Landroid/telephony/PhoneStateListener;
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
    .line 263
    iput-object p1, p0, Lcom/android/server/StartShutdownPolicy$2;->this$0:Lcom/android/server/StartShutdownPolicy;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 5
    .param p1, "state"    # I
    .param p2, "incomingNumber"    # Ljava/lang/String;

    .prologue
    .line 267
    iget-object v1, p0, Lcom/android/server/StartShutdownPolicy$2;->this$0:Lcom/android/server/StartShutdownPolicy;

    # getter for: Lcom/android/server/StartShutdownPolicy;->mCallStateSync:Ljava/lang/Object;
    invoke-static {v1}, Lcom/android/server/StartShutdownPolicy;->access$700(Lcom/android/server/StartShutdownPolicy;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 268
    :try_start_0
    const-string v1, "StartShutdownService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "call state changed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    if-eqz p1, :cond_0

    .line 270
    const-string v1, "StartShutdownService"

    const-string v3, "call state is not idle, cancel shutdown"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    iget-object v1, p0, Lcom/android/server/StartShutdownPolicy$2;->this$0:Lcom/android/server/StartShutdownPolicy;

    # invokes: Lcom/android/server/StartShutdownPolicy;->cancelShutdown()V
    invoke-static {v1}, Lcom/android/server/StartShutdownPolicy;->access$800(Lcom/android/server/StartShutdownPolicy;)V

    .line 272
    iget-object v1, p0, Lcom/android/server/StartShutdownPolicy$2;->this$0:Lcom/android/server/StartShutdownPolicy;

    const/4 v3, 0x1

    # setter for: Lcom/android/server/StartShutdownPolicy;->mCalling:Z
    invoke-static {v1, v3}, Lcom/android/server/StartShutdownPolicy;->access$902(Lcom/android/server/StartShutdownPolicy;Z)Z

    .line 282
    :goto_0
    iget-object v1, p0, Lcom/android/server/StartShutdownPolicy$2;->this$0:Lcom/android/server/StartShutdownPolicy;

    # getter for: Lcom/android/server/StartShutdownPolicy;->mCallStateSync:Ljava/lang/Object;
    invoke-static {v1}, Lcom/android/server/StartShutdownPolicy;->access$700(Lcom/android/server/StartShutdownPolicy;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 283
    monitor-exit v2

    .line 284
    return-void

    .line 274
    :cond_0
    const-string v1, "StartShutdownService"

    const-string v3, "call state:idle"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    iget-object v1, p0, Lcom/android/server/StartShutdownPolicy$2;->this$0:Lcom/android/server/StartShutdownPolicy;

    const/4 v3, 0x0

    # setter for: Lcom/android/server/StartShutdownPolicy;->mCalling:Z
    invoke-static {v1, v3}, Lcom/android/server/StartShutdownPolicy;->access$902(Lcom/android/server/StartShutdownPolicy;Z)Z

    .line 277
    iget-object v1, p0, Lcom/android/server/StartShutdownPolicy$2;->this$0:Lcom/android/server/StartShutdownPolicy;

    # getter for: Lcom/android/server/StartShutdownPolicy;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/StartShutdownPolicy;->access$400(Lcom/android/server/StartShutdownPolicy;)Landroid/content/Context;

    move-result-object v1

    const-string v3, "phone"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 279
    .local v0, "tm":Landroid/telephony/TelephonyManager;
    iget-object v1, p0, Lcom/android/server/StartShutdownPolicy$2;->this$0:Lcom/android/server/StartShutdownPolicy;

    # getter for: Lcom/android/server/StartShutdownPolicy;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;
    invoke-static {v1}, Lcom/android/server/StartShutdownPolicy;->access$1000(Lcom/android/server/StartShutdownPolicy;)Landroid/telephony/PhoneStateListener;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    goto :goto_0

    .line 283
    .end local v0    # "tm":Landroid/telephony/TelephonyManager;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
