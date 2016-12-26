.class Lcom/lenovo/psswitch/PsAnimationHelper$2;
.super Ljava/lang/Object;
.source "PsAnimationHelper.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/psswitch/PsAnimationHelper;->excuExitAnim()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/psswitch/PsAnimationHelper;


# direct methods
.method constructor <init>(Lcom/lenovo/psswitch/PsAnimationHelper;)V
    .locals 0

    .prologue
    .line 187
    iput-object p1, p0, Lcom/lenovo/psswitch/PsAnimationHelper$2;->this$0:Lcom/lenovo/psswitch/PsAnimationHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 198
    const-string v0, "mytest"

    const-string v1, "Anim end"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    iget-object v0, p0, Lcom/lenovo/psswitch/PsAnimationHelper$2;->this$0:Lcom/lenovo/psswitch/PsAnimationHelper;

    # getter for: Lcom/lenovo/psswitch/PsAnimationHelper;->parent:Landroid/view/ViewGroup;
    invoke-static {v0}, Lcom/lenovo/psswitch/PsAnimationHelper;->access$000(Lcom/lenovo/psswitch/PsAnimationHelper;)Landroid/view/ViewGroup;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 200
    iget-object v0, p0, Lcom/lenovo/psswitch/PsAnimationHelper$2;->this$0:Lcom/lenovo/psswitch/PsAnimationHelper;

    # getter for: Lcom/lenovo/psswitch/PsAnimationHelper;->parent:Landroid/view/ViewGroup;
    invoke-static {v0}, Lcom/lenovo/psswitch/PsAnimationHelper;->access$000(Lcom/lenovo/psswitch/PsAnimationHelper;)Landroid/view/ViewGroup;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 201
    iget-object v0, p0, Lcom/lenovo/psswitch/PsAnimationHelper$2;->this$0:Lcom/lenovo/psswitch/PsAnimationHelper;

    iget-object v1, p0, Lcom/lenovo/psswitch/PsAnimationHelper$2;->this$0:Lcom/lenovo/psswitch/PsAnimationHelper;

    # getter for: Lcom/lenovo/psswitch/PsAnimationHelper;->parent:Landroid/view/ViewGroup;
    invoke-static {v1}, Lcom/lenovo/psswitch/PsAnimationHelper;->access$000(Lcom/lenovo/psswitch/PsAnimationHelper;)Landroid/view/ViewGroup;

    move-result-object v1

    # invokes: Lcom/lenovo/psswitch/PsAnimationHelper;->removeView(Landroid/view/View;)V
    invoke-static {v0, v1}, Lcom/lenovo/psswitch/PsAnimationHelper;->access$200(Lcom/lenovo/psswitch/PsAnimationHelper;Landroid/view/View;)V

    .line 204
    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 210
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 192
    const-string v0, "mytest"

    const-string v1, "Anim start"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    return-void
.end method
