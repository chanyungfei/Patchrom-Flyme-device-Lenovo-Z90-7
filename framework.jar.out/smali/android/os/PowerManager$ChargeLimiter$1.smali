.class Landroid/os/PowerManager$ChargeLimiter$1;
.super Ljava/lang/Object;
.source "PowerManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/PowerManager$ChargeLimiter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/os/PowerManager$ChargeLimiter;


# direct methods
.method constructor <init>(Landroid/os/PowerManager$ChargeLimiter;)V
    .locals 0

    .prologue
    .line 1192
    iput-object p1, p0, Landroid/os/PowerManager$ChargeLimiter$1;->this$1:Landroid/os/PowerManager$ChargeLimiter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1194
    iget-object v0, p0, Landroid/os/PowerManager$ChargeLimiter$1;->this$1:Landroid/os/PowerManager$ChargeLimiter;

    invoke-virtual {v0}, Landroid/os/PowerManager$ChargeLimiter;->release()V

    .line 1195
    return-void
.end method
