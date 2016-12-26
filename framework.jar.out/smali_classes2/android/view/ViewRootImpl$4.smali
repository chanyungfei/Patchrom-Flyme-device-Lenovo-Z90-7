.class Landroid/view/ViewRootImpl$4;
.super Ljava/lang/Object;
.source "ViewRootImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/view/ViewRootImpl;->loadSystemProperties()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/view/ViewRootImpl;


# direct methods
.method constructor <init>(Landroid/view/ViewRootImpl;)V
    .locals 0

    .prologue
    .line 5599
    iput-object p1, p0, Landroid/view/ViewRootImpl$4;->this$0:Landroid/view/ViewRootImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/16 v8, 0x17

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 5604
    const-string v5, "persist.sys.log.debugevent"

    invoke-static {v5, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_3

    move v1, v3

    .line 5606
    .local v1, "persistDebugEvent":Z
    :goto_0
    const-string v5, "ro.debugevent"

    invoke-static {v5, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_4

    move v2, v3

    .line 5608
    .local v2, "roDebugEvent":Z
    :goto_1
    const-string v5, "ViewRootImpl"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "loadSystemProperties PersistDebugEvent: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " RoDebugEvent: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5610
    if-nez v1, :cond_0

    if-eqz v2, :cond_5

    .line 5611
    :cond_0
    sput-boolean v3, Landroid/view/ViewRootImpl;->mDebugEvent:Z

    .line 5618
    :goto_2
    iget-object v3, p0, Landroid/view/ViewRootImpl$4;->this$0:Landroid/view/ViewRootImpl;

    const-string v5, "viewroot.profile_rendering"

    invoke-static {v5, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    # setter for: Landroid/view/ViewRootImpl;->mProfileRendering:Z
    invoke-static {v3, v5}, Landroid/view/ViewRootImpl;->access$1702(Landroid/view/ViewRootImpl;Z)Z

    .line 5619
    iget-object v3, p0, Landroid/view/ViewRootImpl$4;->this$0:Landroid/view/ViewRootImpl;

    iget-object v5, p0, Landroid/view/ViewRootImpl$4;->this$0:Landroid/view/ViewRootImpl;

    iget-object v5, v5, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v5, v5, Landroid/view/View$AttachInfo;->mHasWindowFocus:Z

    # invokes: Landroid/view/ViewRootImpl;->profileRendering(Z)V
    invoke-static {v3, v5}, Landroid/view/ViewRootImpl;->access$300(Landroid/view/ViewRootImpl;Z)V

    .line 5622
    iget-object v3, p0, Landroid/view/ViewRootImpl$4;->this$0:Landroid/view/ViewRootImpl;

    const-string v5, "config.disable_media"

    invoke-static {v5, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    # setter for: Landroid/view/ViewRootImpl;->mMediaDisabled:Z
    invoke-static {v3, v5}, Landroid/view/ViewRootImpl;->access$1802(Landroid/view/ViewRootImpl;Z)Z

    .line 5625
    iget-object v3, p0, Landroid/view/ViewRootImpl$4;->this$0:Landroid/view/ViewRootImpl;

    iget-object v3, v3, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v3, v3, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    if-eqz v3, :cond_1

    .line 5626
    iget-object v3, p0, Landroid/view/ViewRootImpl$4;->this$0:Landroid/view/ViewRootImpl;

    iget-object v3, v3, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v3, v3, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    invoke-virtual {v3}, Landroid/view/HardwareRenderer;->loadSystemProperties()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 5627
    iget-object v3, p0, Landroid/view/ViewRootImpl$4;->this$0:Landroid/view/ViewRootImpl;

    invoke-virtual {v3}, Landroid/view/ViewRootImpl;->invalidate()V

    .line 5632
    :cond_1
    const-string v3, "debug.layout"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 5633
    .local v0, "layout":Z
    iget-object v3, p0, Landroid/view/ViewRootImpl$4;->this$0:Landroid/view/ViewRootImpl;

    iget-object v3, v3, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v3, v3, Landroid/view/View$AttachInfo;->mDebugLayout:Z

    if-eq v0, v3, :cond_2

    .line 5634
    iget-object v3, p0, Landroid/view/ViewRootImpl$4;->this$0:Landroid/view/ViewRootImpl;

    iget-object v3, v3, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput-boolean v0, v3, Landroid/view/View$AttachInfo;->mDebugLayout:Z

    .line 5635
    iget-object v3, p0, Landroid/view/ViewRootImpl$4;->this$0:Landroid/view/ViewRootImpl;

    iget-object v3, v3, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    invoke-virtual {v3, v8}, Landroid/view/ViewRootImpl$ViewRootHandler;->hasMessages(I)Z

    move-result v3

    if-nez v3, :cond_2

    .line 5636
    iget-object v3, p0, Landroid/view/ViewRootImpl$4;->this$0:Landroid/view/ViewRootImpl;

    iget-object v3, v3, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    const-wide/16 v6, 0xc8

    invoke-virtual {v3, v8, v6, v7}, Landroid/view/ViewRootImpl$ViewRootHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 5641
    :cond_2
    iget-object v3, p0, Landroid/view/ViewRootImpl$4;->this$0:Landroid/view/ViewRootImpl;

    sget-object v5, Landroid/os/Build;->HARDWARE:Ljava/lang/String;

    const-string v6, "goldfish"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    # setter for: Landroid/view/ViewRootImpl;->mIsEmulator:Z
    invoke-static {v3, v5}, Landroid/view/ViewRootImpl;->access$1902(Landroid/view/ViewRootImpl;Z)Z

    .line 5642
    iget-object v3, p0, Landroid/view/ViewRootImpl$4;->this$0:Landroid/view/ViewRootImpl;

    const-string v5, "ro.emulator.circular"

    invoke-static {v5, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    # setter for: Landroid/view/ViewRootImpl;->mIsCircularEmulator:Z
    invoke-static {v3, v4}, Landroid/view/ViewRootImpl;->access$2002(Landroid/view/ViewRootImpl;Z)Z

    .line 5644
    return-void

    .end local v0    # "layout":Z
    .end local v1    # "persistDebugEvent":Z
    .end local v2    # "roDebugEvent":Z
    :cond_3
    move v1, v4

    .line 5604
    goto/16 :goto_0

    .restart local v1    # "persistDebugEvent":Z
    :cond_4
    move v2, v4

    .line 5606
    goto/16 :goto_1

    .line 5613
    .restart local v2    # "roDebugEvent":Z
    :cond_5
    sput-boolean v4, Landroid/view/ViewRootImpl;->mDebugEvent:Z

    goto/16 :goto_2
.end method
