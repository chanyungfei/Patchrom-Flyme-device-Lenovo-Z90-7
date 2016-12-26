.class Lcom/android/server/lights/LightsControl$LightsHandler;
.super Landroid/os/Handler;
.source "LightsControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/lights/LightsControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LightsHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/lights/LightsControl;


# direct methods
.method private constructor <init>(Lcom/android/server/lights/LightsControl;)V
    .locals 0

    .prologue
    .line 127
    iput-object p1, p0, Lcom/android/server/lights/LightsControl$LightsHandler;->this$0:Lcom/android/server/lights/LightsControl;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/lights/LightsControl;Lcom/android/server/lights/LightsControl$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/lights/LightsControl;
    .param p2, "x1"    # Lcom/android/server/lights/LightsControl$1;

    .prologue
    .line 127
    invoke-direct {p0, p1}, Lcom/android/server/lights/LightsControl$LightsHandler;-><init>(Lcom/android/server/lights/LightsControl;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 129
    monitor-enter p0

    .line 130
    :try_start_0
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 135
    :goto_0
    monitor-exit p0

    .line 136
    return-void

    .line 132
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/lights/LightsControl$LightsHandler;->this$0:Lcom/android/server/lights/LightsControl;

    # getter for: Lcom/android/server/lights/LightsControl;->mButtonLight:Lcom/android/server/lights/Light;
    invoke-static {v0}, Lcom/android/server/lights/LightsControl;->access$200(Lcom/android/server/lights/LightsControl;)Lcom/android/server/lights/Light;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/lights/Light;->turnOff()V

    goto :goto_0

    .line 135
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 130
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
