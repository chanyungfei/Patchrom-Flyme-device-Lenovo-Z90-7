.class Lcom/android/settings/accessibility/AccessibilitySettings$8;
.super Landroid/database/ContentObserver;
.source "AccessibilitySettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/accessibility/AccessibilitySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/accessibility/AccessibilitySettings;


# direct methods
.method constructor <init>(Lcom/android/settings/accessibility/AccessibilitySettings;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 1059
    iput-object p1, p0, Lcom/android/settings/accessibility/AccessibilitySettings$8;->this$0:Lcom/android/settings/accessibility/AccessibilitySettings;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .param p1, "selfChange"    # Z

    .prologue
    .line 1062
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings$8;->this$0:Lcom/android/settings/accessibility/AccessibilitySettings;

    # invokes: Lcom/android/settings/accessibility/AccessibilitySettings;->updateRotationCheckbox()V
    invoke-static {v0}, Lcom/android/settings/accessibility/AccessibilitySettings;->access$600(Lcom/android/settings/accessibility/AccessibilitySettings;)V

    .line 1063
    return-void
.end method
