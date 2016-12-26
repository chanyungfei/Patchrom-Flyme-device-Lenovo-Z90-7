.class final Lcom/lenovo/PerformanceControl$PerformaceControlHandler;
.super Landroid/os/Handler;
.source "PerformanceControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/PerformanceControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PerformaceControlHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/PerformanceControl;


# direct methods
.method public constructor <init>(Lcom/lenovo/PerformanceControl;Landroid/os/Looper;)V
    .locals 2
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 163
    iput-object p1, p0, Lcom/lenovo/PerformanceControl$PerformaceControlHandler;->this$0:Lcom/lenovo/PerformanceControl;

    .line 164
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p2, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 165
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 169
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 197
    :goto_0
    return-void

    .line 171
    :pswitch_0
    iget-object v0, p0, Lcom/lenovo/PerformanceControl$PerformaceControlHandler;->this$0:Lcom/lenovo/PerformanceControl;

    # invokes: Lcom/lenovo/PerformanceControl;->pullParseXML()V
    invoke-static {v0}, Lcom/lenovo/PerformanceControl;->access$000(Lcom/lenovo/PerformanceControl;)V

    goto :goto_0

    .line 175
    :pswitch_1
    :try_start_0
    const-string v0, "/sys/devices/system/cpu/cpu0/rq-stats/pp_helper"

    const-string v1, "M1,T-10000"

    invoke-static {v0, v1}, Landroid/os/FileUtils;->stringToFile(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 176
    :catch_0
    move-exception v0

    goto :goto_0

    .line 181
    :pswitch_2
    :try_start_1
    const-string v0, "/sys/devices/system/cpu/cpu0/rq-stats/pp_helper"

    const-string v1, "M0,T10000"

    invoke-static {v0, v1}, Landroid/os/FileUtils;->stringToFile(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 182
    :catch_1
    move-exception v0

    goto :goto_0

    .line 187
    :pswitch_3
    :try_start_2
    iget-object v0, p0, Lcom/lenovo/PerformanceControl$PerformaceControlHandler;->this$0:Lcom/lenovo/PerformanceControl;

    # getter for: Lcom/lenovo/PerformanceControl;->misFirstBoot:Z
    invoke-static {v0}, Lcom/lenovo/PerformanceControl;->access$100(Lcom/lenovo/PerformanceControl;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 188
    new-instance v0, Ljava/io/File;

    const-string v1, "/system/etc/perf-restrictions.xml"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/io/File;

    const-string v2, "/data/system/perf-restrictions.xml"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Landroid/os/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    .line 190
    :cond_0
    iget-object v0, p0, Lcom/lenovo/PerformanceControl$PerformaceControlHandler;->this$0:Lcom/lenovo/PerformanceControl;

    # invokes: Lcom/lenovo/PerformanceControl;->pullParseXML()V
    invoke-static {v0}, Lcom/lenovo/PerformanceControl;->access$000(Lcom/lenovo/PerformanceControl;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    .line 191
    :catch_2
    move-exception v0

    goto :goto_0

    .line 169
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
