.class Landroid/app/Activity$2;
.super Ljava/lang/Object;
.source "Activity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/app/Activity;->initTintAndIconTheme()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/app/Activity;


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 4726
    iput-object p1, p0, Landroid/app/Activity$2;->this$0:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 4728
    iget-object v3, p0, Landroid/app/Activity$2;->this$0:Landroid/app/Activity;

    # invokes: Landroid/app/Activity;->getTintAndIconThemeColors()V
    invoke-static {v3}, Landroid/app/Activity;->access$200(Landroid/app/Activity;)V

    .line 4729
    iget-object v3, p0, Landroid/app/Activity$2;->this$0:Landroid/app/Activity;

    # getter for: Landroid/app/Activity;->mShouldSetStatusBarTint:Z
    invoke-static {v3}, Landroid/app/Activity;->access$300(Landroid/app/Activity;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 4730
    iget-object v3, p0, Landroid/app/Activity$2;->this$0:Landroid/app/Activity;

    # getter for: Landroid/app/Activity;->mStatusBarTintColor:Ljava/lang/Integer;
    invoke-static {v3}, Landroid/app/Activity;->access$400(Landroid/app/Activity;)Ljava/lang/Integer;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 4731
    iget-object v3, p0, Landroid/app/Activity$2;->this$0:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    iget-object v4, p0, Landroid/app/Activity$2;->this$0:Landroid/app/Activity;

    # getter for: Landroid/app/Activity;->mStatusBarTintColor:Ljava/lang/Integer;
    invoke-static {v4}, Landroid/app/Activity;->access$400(Landroid/app/Activity;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 4732
    iget-object v3, p0, Landroid/app/Activity$2;->this$0:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    iget-object v4, p0, Landroid/app/Activity$2;->this$0:Landroid/app/Activity;

    # getter for: Landroid/app/Activity;->mStatusBarTintColor:Ljava/lang/Integer;
    invoke-static {v4}, Landroid/app/Activity;->access$400(Landroid/app/Activity;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    # invokes: Landroid/app/Activity;->isWhiteColor(I)Z
    invoke-static {v4}, Landroid/app/Activity;->access$500(I)Z

    move-result v4

    if-eqz v4, :cond_1

    :goto_0
    invoke-virtual {v3, v1}, Landroid/view/Window;->romUI_setDarkStatusIcon(Z)V

    .line 4747
    :cond_0
    :goto_1
    return-void

    :cond_1
    move v1, v2

    .line 4732
    goto :goto_0

    .line 4736
    :cond_2
    const-string v1, "Fail to get the tint color"

    # invokes: Landroid/app/Activity;->tintLog(Ljava/lang/String;)V
    invoke-static {v1}, Landroid/app/Activity;->access$600(Ljava/lang/String;)V

    .line 4737
    iget-object v1, p0, Landroid/app/Activity$2;->this$0:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 4738
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v2, 0x7fffffff

    and-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 4739
    iget-object v1, p0, Landroid/app/Activity$2;->this$0:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    goto :goto_1

    .line 4741
    .end local v0    # "lp":Landroid/view/WindowManager$LayoutParams;
    :cond_3
    iget-object v3, p0, Landroid/app/Activity$2;->this$0:Landroid/app/Activity;

    # getter for: Landroid/app/Activity;->mShouldSetStatusBarIconTheme:Z
    invoke-static {v3}, Landroid/app/Activity;->access$700(Landroid/app/Activity;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4742
    iget-object v3, p0, Landroid/app/Activity$2;->this$0:Landroid/app/Activity;

    # getter for: Landroid/app/Activity;->mStatusBarBGColor:Ljava/lang/Integer;
    invoke-static {v3}, Landroid/app/Activity;->access$800(Landroid/app/Activity;)Ljava/lang/Integer;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 4743
    iget-object v3, p0, Landroid/app/Activity$2;->this$0:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    iget-object v4, p0, Landroid/app/Activity$2;->this$0:Landroid/app/Activity;

    # getter for: Landroid/app/Activity;->mStatusBarBGColor:Ljava/lang/Integer;
    invoke-static {v4}, Landroid/app/Activity;->access$800(Landroid/app/Activity;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    # invokes: Landroid/app/Activity;->isWhiteColor(I)Z
    invoke-static {v4}, Landroid/app/Activity;->access$500(I)Z

    move-result v4

    if-eqz v4, :cond_4

    :goto_2
    invoke-virtual {v3, v1}, Landroid/view/Window;->romUI_setDarkStatusIcon(Z)V

    goto :goto_1

    :cond_4
    move v1, v2

    goto :goto_2
.end method
