.class Landroid/util/NtpTrustedTime$1;
.super Landroid/os/AsyncTask;
.source "NtpTrustedTime.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/util/NtpTrustedTime;->requestSntpTime()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroid/util/NtpTrustedTime;

.field final synthetic val$timeout:J


# direct methods
.method constructor <init>(Landroid/util/NtpTrustedTime;J)V
    .locals 0

    .prologue
    .line 204
    iput-object p1, p0, Landroid/util/NtpTrustedTime$1;->this$0:Landroid/util/NtpTrustedTime;

    iput-wide p2, p0, Landroid/util/NtpTrustedTime$1;->val$timeout:J

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 204
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/util/NtpTrustedTime$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 8
    .param p1, "aVoid"    # [Ljava/lang/Void;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 207
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    # getter for: Landroid/util/NtpTrustedTime;->mNtpServers:[Ljava/lang/String;
    invoke-static {}, Landroid/util/NtpTrustedTime;->access$000()[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 209
    iget-object v1, p0, Landroid/util/NtpTrustedTime$1;->this$0:Landroid/util/NtpTrustedTime;

    # getter for: Landroid/util/NtpTrustedTime;->mClient:Landroid/net/SntpClient;
    invoke-static {v1}, Landroid/util/NtpTrustedTime;->access$100(Landroid/util/NtpTrustedTime;)Landroid/net/SntpClient;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/util/NtpTrustedTime$1;->this$0:Landroid/util/NtpTrustedTime;

    # getter for: Landroid/util/NtpTrustedTime;->mClient:Landroid/net/SntpClient;
    invoke-static {v1}, Landroid/util/NtpTrustedTime;->access$100(Landroid/util/NtpTrustedTime;)Landroid/net/SntpClient;

    move-result-object v1

    # getter for: Landroid/util/NtpTrustedTime;->mNtpServers:[Ljava/lang/String;
    invoke-static {}, Landroid/util/NtpTrustedTime;->access$000()[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v0

    iget-wide v4, p0, Landroid/util/NtpTrustedTime$1;->val$timeout:J

    long-to-int v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/net/SntpClient;->requestTime(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 212
    iget-object v1, p0, Landroid/util/NtpTrustedTime$1;->this$0:Landroid/util/NtpTrustedTime;

    # setter for: Landroid/util/NtpTrustedTime;->mSuccess:Z
    invoke-static {v1, v6}, Landroid/util/NtpTrustedTime;->access$202(Landroid/util/NtpTrustedTime;Z)Z

    .line 213
    const-string v1, "NtpTrustedTime"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "client.requestTime ntpServers[i] is true return"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    iget-object v1, p0, Landroid/util/NtpTrustedTime$1;->this$0:Landroid/util/NtpTrustedTime;

    # setter for: Landroid/util/NtpTrustedTime;->mHasCache:Z
    invoke-static {v1, v6}, Landroid/util/NtpTrustedTime;->access$302(Landroid/util/NtpTrustedTime;Z)Z

    .line 217
    iget-object v1, p0, Landroid/util/NtpTrustedTime$1;->this$0:Landroid/util/NtpTrustedTime;

    iget-object v2, p0, Landroid/util/NtpTrustedTime$1;->this$0:Landroid/util/NtpTrustedTime;

    # getter for: Landroid/util/NtpTrustedTime;->mClient:Landroid/net/SntpClient;
    invoke-static {v2}, Landroid/util/NtpTrustedTime;->access$100(Landroid/util/NtpTrustedTime;)Landroid/net/SntpClient;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/SntpClient;->getNtpTime()J

    move-result-wide v2

    # setter for: Landroid/util/NtpTrustedTime;->mCachedNtpTime:J
    invoke-static {v1, v2, v3}, Landroid/util/NtpTrustedTime;->access$402(Landroid/util/NtpTrustedTime;J)J

    .line 218
    iget-object v1, p0, Landroid/util/NtpTrustedTime$1;->this$0:Landroid/util/NtpTrustedTime;

    iget-object v2, p0, Landroid/util/NtpTrustedTime$1;->this$0:Landroid/util/NtpTrustedTime;

    # getter for: Landroid/util/NtpTrustedTime;->mClient:Landroid/net/SntpClient;
    invoke-static {v2}, Landroid/util/NtpTrustedTime;->access$100(Landroid/util/NtpTrustedTime;)Landroid/net/SntpClient;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/SntpClient;->getNtpTimeReference()J

    move-result-wide v2

    # setter for: Landroid/util/NtpTrustedTime;->mCachedNtpElapsedRealtime:J
    invoke-static {v1, v2, v3}, Landroid/util/NtpTrustedTime;->access$502(Landroid/util/NtpTrustedTime;J)J

    .line 220
    iget-object v1, p0, Landroid/util/NtpTrustedTime$1;->this$0:Landroid/util/NtpTrustedTime;

    iget-object v2, p0, Landroid/util/NtpTrustedTime$1;->this$0:Landroid/util/NtpTrustedTime;

    # getter for: Landroid/util/NtpTrustedTime;->mClient:Landroid/net/SntpClient;
    invoke-static {v2}, Landroid/util/NtpTrustedTime;->access$100(Landroid/util/NtpTrustedTime;)Landroid/net/SntpClient;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/SntpClient;->getRoundTripTime()J

    move-result-wide v2

    const-wide/16 v4, 0x2

    div-long/2addr v2, v4

    # setter for: Landroid/util/NtpTrustedTime;->mCachedNtpCertainty:J
    invoke-static {v1, v2, v3}, Landroid/util/NtpTrustedTime;->access$602(Landroid/util/NtpTrustedTime;J)J

    .line 228
    :cond_0
    return-object v7

    .line 225
    :cond_1
    iget-object v1, p0, Landroid/util/NtpTrustedTime$1;->this$0:Landroid/util/NtpTrustedTime;

    const/4 v2, 0x0

    # setter for: Landroid/util/NtpTrustedTime;->mSuccess:Z
    invoke-static {v1, v2}, Landroid/util/NtpTrustedTime;->access$202(Landroid/util/NtpTrustedTime;Z)Z

    .line 207
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 204
    check-cast p1, Ljava/lang/Void;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/util/NtpTrustedTime$1;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 1
    .param p1, "aVoid"    # Ljava/lang/Void;

    .prologue
    .line 232
    iget-object v0, p0, Landroid/util/NtpTrustedTime$1;->this$0:Landroid/util/NtpTrustedTime;

    # invokes: Landroid/util/NtpTrustedTime;->sntpTimeResponse()V
    invoke-static {v0}, Landroid/util/NtpTrustedTime;->access$700(Landroid/util/NtpTrustedTime;)V

    .line 233
    return-void
.end method
