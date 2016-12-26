.class Lcom/android/server/MountService$MountServiceUIHandler$1;
.super Ljava/lang/Object;
.source "MountService.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/MountService$MountServiceUIHandler;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/MountService$MountServiceUIHandler;


# direct methods
.method constructor <init>(Lcom/android/server/MountService$MountServiceUIHandler;)V
    .locals 0

    .prologue
    .line 625
    iput-object p1, p0, Lcom/android/server/MountService$MountServiceUIHandler$1;->this$1:Lcom/android/server/MountService$MountServiceUIHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    .line 627
    iget-object v0, p0, Lcom/android/server/MountService$MountServiceUIHandler$1;->this$1:Lcom/android/server/MountService$MountServiceUIHandler;

    iget-object v0, v0, Lcom/android/server/MountService$MountServiceUIHandler;->this$0:Lcom/android/server/MountService;

    # getter for: Lcom/android/server/MountService;->mUIHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/MountService;->access$1200(Lcom/android/server/MountService;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x7

    const-wide/16 v2, 0x7530

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 628
    return-void
.end method
