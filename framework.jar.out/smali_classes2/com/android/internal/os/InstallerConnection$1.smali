.class Lcom/android/internal/os/InstallerConnection$1;
.super Ljava/lang/Object;
.source "InstallerConnection.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/InstallerConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/os/InstallerConnection;


# direct methods
.method constructor <init>(Lcom/android/internal/os/InstallerConnection;)V
    .locals 0

    .prologue
    .line 334
    iput-object p1, p0, Lcom/android/internal/os/InstallerConnection$1;->this$0:Lcom/android/internal/os/InstallerConnection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 337
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 338
    iget-object v0, p0, Lcom/android/internal/os/InstallerConnection$1;->this$0:Lcom/android/internal/os/InstallerConnection;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, v0, Lcom/android/internal/os/InstallerConnection;->mHandler:Landroid/os/Handler;

    .line 339
    iget-object v0, p0, Lcom/android/internal/os/InstallerConnection$1;->this$0:Lcom/android/internal/os/InstallerConnection;

    # invokes: Lcom/android/internal/os/InstallerConnection;->checkPoller()V
    invoke-static {v0}, Lcom/android/internal/os/InstallerConnection;->access$000(Lcom/android/internal/os/InstallerConnection;)V

    .line 340
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 341
    return-void
.end method
