.class Lcom/android/server/wifi/WifiTrafficPoller$PingResult;
.super Ljava/lang/Object;
.source "WifiTrafficPoller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiTrafficPoller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PingResult"
.end annotation


# instance fields
.field public address:Ljava/lang/String;

.field public average_rtt:I

.field public package_loss:I

.field final synthetic this$0:Lcom/android/server/wifi/WifiTrafficPoller;


# direct methods
.method private constructor <init>(Lcom/android/server/wifi/WifiTrafficPoller;)V
    .locals 0

    .prologue
    .line 349
    iput-object p1, p0, Lcom/android/server/wifi/WifiTrafficPoller$PingResult;->this$0:Lcom/android/server/wifi/WifiTrafficPoller;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/wifi/WifiTrafficPoller;Lcom/android/server/wifi/WifiTrafficPoller$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/wifi/WifiTrafficPoller;
    .param p2, "x1"    # Lcom/android/server/wifi/WifiTrafficPoller$1;

    .prologue
    .line 349
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiTrafficPoller$PingResult;-><init>(Lcom/android/server/wifi/WifiTrafficPoller;)V

    return-void
.end method
