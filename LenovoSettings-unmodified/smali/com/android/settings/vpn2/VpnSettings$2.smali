.class Lcom/android/settings/vpn2/VpnSettings$2;
.super Ljava/lang/Object;
.source "VpnSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/vpn2/VpnSettings;->onContextItemSelected(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/vpn2/VpnSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/vpn2/VpnSettings;)V
    .locals 0

    .prologue
    .line 515
    iput-object p1, p0, Lcom/android/settings/vpn2/VpnSettings$2;->this$0:Lcom/android/settings/vpn2/VpnSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 517
    const-string v0, "VpnSettings"

    const-string v1, "click delete vpn dialog OK button"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 519
    iget-object v0, p0, Lcom/android/settings/vpn2/VpnSettings$2;->this$0:Lcom/android/settings/vpn2/VpnSettings;

    invoke-virtual {v0}, Lcom/android/settings/vpn2/VpnSettings;->getOwner()Lcom/android/settings/vpn2/VpnSettings;

    move-result-object v0

    # invokes: Lcom/android/settings/vpn2/VpnSettings;->delVpn()V
    invoke-static {v0}, Lcom/android/settings/vpn2/VpnSettings;->access$200(Lcom/android/settings/vpn2/VpnSettings;)V

    .line 520
    return-void
.end method
