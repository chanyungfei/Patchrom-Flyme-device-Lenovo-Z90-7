.class Lcom/android/settings/deviceinfo/UsbSettings$4$2;
.super Ljava/lang/Object;
.source "UsbSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/deviceinfo/UsbSettings$4;->onCheckedChanged(Landroid/widget/CompoundButton;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/deviceinfo/UsbSettings$4;


# direct methods
.method constructor <init>(Lcom/android/settings/deviceinfo/UsbSettings$4;)V
    .locals 0

    .prologue
    .line 391
    iput-object p1, p0, Lcom/android/settings/deviceinfo/UsbSettings$4$2;->this$1:Lcom/android/settings/deviceinfo/UsbSettings$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 395
    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings$4$2;->this$1:Lcom/android/settings/deviceinfo/UsbSettings$4;

    iget-object v0, v0, Lcom/android/settings/deviceinfo/UsbSettings$4;->this$0:Lcom/android/settings/deviceinfo/UsbSettings;

    invoke-virtual {v0}, Lcom/android/settings/deviceinfo/UsbSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "usb_auto_popup"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 396
    return-void
.end method
